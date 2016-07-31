Ohai.plugin(:Chocolatey) do
  provides 'chocolatey'

  depends 'platform_family'

  def chocolatey_installed?
    so = shell_out('choco', returns: [0, 1])
    /^Chocolatey/i =~ so.stdout
  end

  def chocolatey_packages
    so = shell_out('choco list -l')
    lines = so.stdout.split("\n")
    lines.reject! { |line| /^Chocolatey v/ === line }
    lines.reject! { |line| /^\d+ packages installed/ === line }
    pkgs = {}
    lines.map! do |line|
      parts = line.strip.split(' ')
      pkgs[parts[0]] = { 'version' => parts[1] }
    end
    Mash.new(pkgs)
  end

  collect_data(:windows) do
    if platform_family.eql?('windows')
      if chocolatey_installed?
        chocolatey Mash.new
        chocolatey['packages'] = chocolatey_packages
      else
        Ohai::Log.debug('Chocolatey is not installed')
      end
    end
  end
end

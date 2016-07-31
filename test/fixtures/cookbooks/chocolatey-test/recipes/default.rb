ohai 'reload ohai post chocolatey install' do
  action :reload
end

file 'C:/node.json' do
  content lazy { node.to_json }
end

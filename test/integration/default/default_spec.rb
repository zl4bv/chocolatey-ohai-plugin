# encoding: utf-8
# author: Ben Vidulich

describe json('C:/node.json') do
  its(%w(automatic
         chocolatey)) { should_not eq(nil) }

  its(%w(automatic
         chocolatey
         packages
         chocolatey
         version)) { should_not eq(nil) }
end

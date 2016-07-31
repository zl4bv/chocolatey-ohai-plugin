# chocolatey-ohai-plugin
[![Build status](https://ci.appveyor.com/api/projects/status/1uufhsayaglup208/branch/master?svg=true)](https://ci.appveyor.com/project/zl4bv/chocolatey-ohai-plugin/branch/master)

[Ohai](https://github.com/chef/ohai) plugin to discover installed [Chocolatey](https://chocolatey.org/) packages.

## Requirements

### Platforms

- Windows

### Chef

- Chef 12+

### Cookbooks

- ohai

## Usage

Add the `chocolatey-ohai-plugin::default` recipe to the start of your runlist.

Alternatively, you can manually copy `templates/default/chocolatey.rb` to your
Ohai plugins directory.

## License & Authors

**Author:** Ben Vidulich

**Copyright:** 2016, Ben Vidulich

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

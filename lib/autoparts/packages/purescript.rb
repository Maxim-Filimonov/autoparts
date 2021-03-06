# Copyright Chris Schneider <chris@christopher-schneider.com>
# This software is licensed under the [BSD 2-Clause license](https://raw.github.com/nitrous-io/autoparts/master/LICENSE).

module Autoparts
  module Packages
    class Purescript < Package
      name 'purescript'
      version '0.6.3'
      description 'PureScript is a small strongly, statically typed programming language with expressive types, written in and inspired by Haskell, and compiling to Javascript'
      category Category::PROGRAMMING_LANGUAGES
      source_url 'https://github.com/purescript/purescript/releases/download/v0.6.3/linux64.tar.gz'
      source_sha1 '105574b6f273ddf265c529de41bd87c2f6df9e70'
      source_filetype 'tar.gz'

      def install
        bin_path.mkpath
        `cp #{extracted_archive_path + "purescript"}/psc-docs     #{bin_path}`
        `cp #{extracted_archive_path + "purescript"}/psc          #{bin_path}`
        `cp #{extracted_archive_path + "purescript"}/psc-make     #{bin_path}`
        `cp #{extracted_archive_path + "purescript"}/psci         #{bin_path}`
      end

      def symlink_all
        symlink_recursively(bin_path, Path.bin, only_executables: true)
      end
    end
  end
end

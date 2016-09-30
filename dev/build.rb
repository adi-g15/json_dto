#!/usr/bin/ruby
require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target( MxxRu::BUILD_ROOT ) {

  toolset.force_cpp14
  global_include_path "."

  if 'gcc' == toolset.name || 'clang' == toolset.name
          global_linker_option '-pthread'
          global_linker_option '-static-libstdc++'
          global_linker_option "-Wl,-rpath='$ORIGIN'"
  end

  if 'gcc' == toolset.name
          global_compiler_option '-Wextra'
          global_compiler_option '-Wall'
  end

  # If there is local options file then use it.
  if FileTest.exist?( "local-build.rb" )
          required_prj "local-build.rb"
  else
          default_runtime_mode( MxxRu::Cpp::RUNTIME_RELEASE )
          MxxRu::enable_show_brief
          global_obj_placement MxxRu::Cpp::RuntimeSubdirObjPlacement.new( 'target' )
  end

  required_prj( "test/build_tests.rb" )

  required_prj( "sample/tutorial1/prj.rb" )
  required_prj( "sample/tutorial1.1/prj.rb" )
  required_prj( "sample/tutorial2/prj.rb" )
  required_prj( "sample/tutorial3/prj.rb" )
  required_prj( "sample/tutorial4/prj.rb" )
  required_prj( "sample/tutorial5/prj.rb" )
  required_prj( "sample/tutorial6/prj.rb" )
  required_prj( "sample/tutorial7/prj.rb" )
  required_prj( "sample/tutorial8/prj.rb" )
  required_prj( "sample/tutorial9/prj.rb" )
  required_prj( "sample/tutorial10/prj.rb" )
  required_prj( "sample/tutorial11/prj.rb" )
  required_prj( "sample/tutorial12/prj.rb" )
  required_prj( "sample/tutorial14/prj.rb" )
}
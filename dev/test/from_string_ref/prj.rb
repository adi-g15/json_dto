require 'mxx_ru/cpp'
MxxRu::Cpp::exe_target {
	required_prj 'rapidjson_mxxru/prj.rb'
	required_prj 'test/catch_main/prj.rb'

	target( "_unit.test.from_string_ref" )

	cpp_source( "main.cpp" )
}


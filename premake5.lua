project "freetype-gl"
	kind "StaticLib"
	language "C"
	staticruntime "on"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"distance-field.h",
		"edtaa3func.h",
		"font-manager.h",
		"freetype-gl.h",
		"markup.h",
		"opengl.h",
		"platform.h",
		"text-buffer.h",
		"texture-atlas.h",
		"texture-font.h",
		"utf8-utils.h",
		"vec234.h",
		"vector.h",
		"vertex-attribute.h",
		"vertex-buffer.h",

		"distance-field.c",
		"edtaa3func.c",
		"font-manager.c",
		"platform.c",
		"text-buffer.c",
		"texture-atlas.c",
		"texture-font.c",
		"utf8-utils.c",
		"vector.c",
		"vertex-attribute.c",
		"vertex-buffer.c"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"FREETYPE_GL_USE_VAO",
		"GL_WITH_GLAD"
	}
	
	includedirs
	{
		"windows/glew",
		"windows/glew/include",
		"windows/freetype",
		"../glad/include"
	}
	
	filter "system:windows"
		systemversion "latest"

		filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

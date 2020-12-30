project "yaml-cpp"
  kind "Staticlib"
  language "C++"
  
  targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("obj/" .. outputDir .. "/%{prj.name}")
  
  files
	{
		"src/**.h",
		"src/**.cpp",
    "include/**.h"    
	}

	includedirs
	{
    "include"
  }
	filter "system:windows"
		systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

		filter "configurations:Release"
			runtime "Release"
			optimize "On"

		filter "configurations:Debug"
			runtime "Debug"
			symbols "On"

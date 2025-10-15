from conans import ConanFile


class OpenJPEG(ConanFile):
    name = "openjpeg"
    version = "2.5.4"
    url = "https://github.com/Esri/openjpeg/tree/runtimecore"
    license = "https://github.com/Esri/openjpeg/blob/runtimecore/LICENSE"
    description = "OpenJPEG is an open-source JPEG 2000 codec written in C language."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/openjpeg/"

        # headers
        self.copy("openjpeg.h", src=base + "src/lib/openjp2", dst=relative + "src/lib/openjp2")
        self.copy("opj_config.h", src=base + "src_generated/lib/openjp2", dst=relative + "src_generated/lib/openjp2")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)

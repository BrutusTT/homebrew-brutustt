class Sophus < Formula

    desc "This is a c++ implementation of Lie groups commonly used for 2d and 3d geometric problems."
    homepage "https://github.com/strasdat/Sophus"
    head "https://github.com/strasdat/Sophus.git"

    depends_on "cmake"      => :build
    depends_on "pkg-config" => :build
    
    depends_on "eigen"
    depends_on "gflags"


    def install
        mkdir "build" do
            system "cmake", "..", *std_cmake_args
            system "make", "-j", "install"
        end
    end

end

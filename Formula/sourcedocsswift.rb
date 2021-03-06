# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sourcedocsswift < Formula
  desc "LaTeX-таблицы всех классов, структур и их полей и методов из проекта Xcode"
  homepage "https://github.com/ilyakooo0/SourceDocsSwift"
  url "https://github.com/ilyakooo0/SourceDocsSwift/releases/download/1.0.4/sourceDocsSwift-1.0.4.zip"
  sha256 "8e7fff93c8880ff5aab48859e5e66408ee89ee836d16983b9ef5afe09ec29d2e"
  # depends_on "cmake" => :build
  
  depends_on "sourcekitten"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    bin.install "sourceDocsSwift"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test SourceDocsSwift`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

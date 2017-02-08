defmodule ExOpenRTB.SourceTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Source{
    fd: :upstream_source,
    tid: "7E3FE21B-EB47-49EB-83FB-C198A2D12E1A",
  }, :source
end

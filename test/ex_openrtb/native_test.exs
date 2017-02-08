defmodule ExOpenRTB.NativeTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Native{
    request: "PAYLOAD",
    ver: "2",
  }, :native
end

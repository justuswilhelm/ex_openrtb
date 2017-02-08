defmodule ExOpenRTB.ContentTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Content{
    id: "1",
    title: "Video",
    producer: %ExOpenRTB.Producer{
      id: "agltb3B1Yi1pbmNyDAsSA0FwcBiJkfTUCV",
      name: "yahoo",
      domain: "www.yahoo.com",
    }
  }, :content
end

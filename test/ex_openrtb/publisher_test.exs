defmodule ExOpenRTB.PublisherTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Publisher{
    id: "agltb3B1Yi1pbmNyDAsSA0FwcBiJkfTUCV",
    name: "yahoo",
    domain: "www.yahoo.com",
  }, :publisher
end

defmodule ExOpenRTB.SiteTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Site{
    id: "102855",
    domain: "http://www.usabarfinder.com",
    cat: [
      "Advertising"
    ],
    page: "http://eas.usabarfinder.com/eas?cu=13824;cre=mu;target=_blank",
    publisher: %ExOpenRTB.Publisher{
      id: "8953",
      name: "local.com",
      domain: "local.com",
    }
  }, :site
end

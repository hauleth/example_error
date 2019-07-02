defmodule ExampleError.MixProject do
  use Mix.Project

  def project do
    [
      app: :example_error,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      erlc_options: erlc_options(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, ">= 1.0.0-rc.0", only: [:dev], runtime: false}
    ]
  end

  defp erlc_options do
    if System.get_env("DEBUG_INFO") do
      [:debug_info, warnings_as_erros: true]
    else
      [warnings_as_erros: true]
    end
  end
end

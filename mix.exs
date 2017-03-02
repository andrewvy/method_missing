defmodule MethodMissing.Mixfile do
  use Mix.Project

  def project do
    [app: :method_missing,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp description() do
		"""
		method_missing is an Elixir library for dynamic code execution.
		"""
  end

  defp package() do
    [maintainers: ["Andrew Vy"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/andrewvy/method_missing"},
     files: ~w(mix.exs README.md lib)]
  end

  defp deps do
    []
  end
end

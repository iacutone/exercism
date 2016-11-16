defmodule SpaceAge do
  @orbital_period_in_seconds %{
    :earth => 31557600,
    :mercury => 7600543,
    :venus => 19414150,
    :mars => 59354032,
    :jupiter => 374361970,
    :saturn => 929292362,
    :uranus => 2651370019,
    :neptune => 5200418560
  }
  def age_on(planet, seconds) do
    seconds / @orbital_period_in_seconds[planet]
  end
end

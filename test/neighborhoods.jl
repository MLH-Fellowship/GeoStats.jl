@testset "Neighborhoods" begin
  @testset "CubeNeighborhood" begin
    grid = RegularGrid{Float64}(100,100)

    neigh1 = GeoStats.CubeNeighborhood(grid, 1.)
    @test neigh1(1) == [1]

    neigh2 = GeoStats.CubeNeighborhood(grid, 2.)
    @test neigh2(1) == [1,2,101,102]
  end
end

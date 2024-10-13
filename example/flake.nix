{
  description = "A sample flake that uses nixright";
  inputs = {
    # Import the nixright flake as an input.
    # In normal usage you would reference the published repo:
    # 
    #  nixright.url = "github:khulnasoft-lab/nixright";
    # 
    # Inside the nixright repo, we instead use the local path:
    nixright.url = "../.";
  };
  outputs = { self, nixright }: {
    tests = nixright.run ./.;
  };
}

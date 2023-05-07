{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.trivial = nixpkgs.legacyPackages.x86_64-linux.writeTextFile {
      name = "trivial";
      text = ''
        I am a trivial package
      '';
    };

    packages.x86_64-linux.default = self.packages.x86_64-linux.trivial;
  };
}

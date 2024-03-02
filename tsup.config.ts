import { defineConfig } from "tsup";

export default defineConfig({
  entry: ["_build/default/bin/main.bc.js"],
  clean: true,
  format: "cjs",
  minify: true,
  sourcemap: true,
  splitting: true,
  target: "node20",
  treeshake: true,
});

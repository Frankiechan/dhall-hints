-- Import from url;
-- you can import most dhall dependencies from urls
-- e.g.
let Prelude =
      https://prelude.dhall-lang.org/package.dhall sha256:10db3c919c25e9046833df897a8ffe2701dc390fa0893d958c3430524be5a43e

-- The reason you have sha behind is because you freeze this import so that you have stablized version of it
-- the way to freeze it is to run

-- dhall freeze --inplace <your-file>
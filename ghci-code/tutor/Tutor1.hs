module Tutor1 where

{-
You'll need to run this cell if the active GHCi session is not with this package's main lib
-}
-- %%
import GHCiCode (somePublicFunc)
-- %-

import Prelude

demo1 :: IO ()
demo1 = do
  -- %%
  putStrLn "Hello, CodeLens!"

  -- %% -- Showcase such a function from this GHCiCode package
  somePublicFunc

  putStrLn "See that?"

  -- %%
  putStrLn "That's it, for now."

  -- %-
  return ()

module GHCiCode where

import GHCiCode.Internal
import Prelude

somePublicFunc :: IO ()
somePublicFunc = do
  someImplementationDetails
  return ()

/**
 * Copyright © 2020 Saleem Abdulrasool <compnerd@compnerd.org>
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 **/

import WinSDK

extension HFONT__: HandleValue {
  typealias HandleType = HFONT
  internal static func release(_ hFont: HandleType?) {
    if let hFont = hFont {
      DeleteObject(hFont)
    }
  }
}

internal typealias FontHandle = ManagedHandle<HFONT__>

extension HDC__: HandleValue {
  typealias HandleType = HDC
  internal static func release(_ hDC: HandleType?) {
    if let hDC = hDC {
      DeleteDC(hDC)
    }
  }
}

internal typealias DeviceContextHandle = ManagedHandle<HDC__>

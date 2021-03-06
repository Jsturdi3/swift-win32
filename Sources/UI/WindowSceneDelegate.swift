/**
 * Copyright © 2020 Saleem Abdulrasool <compnerd@compnerd.org>
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 **/

/// Additional methods that you can use to manage application specific tasks
/// occurring in a scene.
public protocol WindowSceneDelegate: SceneDelegate {
  /// Managing the Scene's Main Window

  // TODO(compnerd) make window optional
  /// THe main window associated with the scene.
  var window: Window? { get set }

  /// Responding to Scene Changes

  /// Notifies you when the size, orientation, or traits of a scene change.
  func windowScene(_ windowScene: WindowScene,
                   didUpdate previousCoordinateSpace: CoordinateSpace,
                   interfaceOrientation previousInterfaceOrientation: InterfaceOrientation,
                   traitCollection previousTraitCollection: TraitCollection)
}

extension WindowSceneDelegate {
  public func windowScene(_ windowScene: WindowScene,
                          didUpdate previousCoordinateSpace: CoordinateSpace,
                          interfaceOrientation previousInterfaceOrientation: InterfaceOrientation,
                          traitCollection previousTraitCollection: TraitCollection) {
  }
}

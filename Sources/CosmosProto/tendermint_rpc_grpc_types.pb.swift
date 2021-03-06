// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/rpc/grpc/types.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Tendermint_Rpc_Grpc_RequestPing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_Rpc_Grpc_RequestBroadcastTx {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var tx: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_Rpc_Grpc_ResponsePing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_Rpc_Grpc_ResponseBroadcastTx {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var checkTx: Tendermint_Abci_ResponseCheckTx {
    get {return _checkTx ?? Tendermint_Abci_ResponseCheckTx()}
    set {_checkTx = newValue}
  }
  /// Returns true if `checkTx` has been explicitly set.
  public var hasCheckTx: Bool {return self._checkTx != nil}
  /// Clears the value of `checkTx`. Subsequent reads from it will return its default value.
  public mutating func clearCheckTx() {self._checkTx = nil}

  public var deliverTx: Tendermint_Abci_ResponseDeliverTx {
    get {return _deliverTx ?? Tendermint_Abci_ResponseDeliverTx()}
    set {_deliverTx = newValue}
  }
  /// Returns true if `deliverTx` has been explicitly set.
  public var hasDeliverTx: Bool {return self._deliverTx != nil}
  /// Clears the value of `deliverTx`. Subsequent reads from it will return its default value.
  public mutating func clearDeliverTx() {self._deliverTx = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _checkTx: Tendermint_Abci_ResponseCheckTx? = nil
  fileprivate var _deliverTx: Tendermint_Abci_ResponseDeliverTx? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.rpc.grpc"

extension Tendermint_Rpc_Grpc_RequestPing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RequestPing"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Rpc_Grpc_RequestPing, rhs: Tendermint_Rpc_Grpc_RequestPing) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Rpc_Grpc_RequestBroadcastTx: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RequestBroadcastTx"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tx"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.tx) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tx.isEmpty {
      try visitor.visitSingularBytesField(value: self.tx, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Rpc_Grpc_RequestBroadcastTx, rhs: Tendermint_Rpc_Grpc_RequestBroadcastTx) -> Bool {
    if lhs.tx != rhs.tx {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Rpc_Grpc_ResponsePing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResponsePing"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Rpc_Grpc_ResponsePing, rhs: Tendermint_Rpc_Grpc_ResponsePing) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Rpc_Grpc_ResponseBroadcastTx: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResponseBroadcastTx"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "check_tx"),
    2: .standard(proto: "deliver_tx"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._checkTx) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._deliverTx) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._checkTx {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._deliverTx {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Rpc_Grpc_ResponseBroadcastTx, rhs: Tendermint_Rpc_Grpc_ResponseBroadcastTx) -> Bool {
    if lhs._checkTx != rhs._checkTx {return false}
    if lhs._deliverTx != rhs._deliverTx {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

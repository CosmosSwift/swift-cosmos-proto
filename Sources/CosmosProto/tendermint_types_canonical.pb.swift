// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/types/canonical.proto
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

public struct Tendermint_Types_CanonicalBlockID {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hash: Data = Data()

  public var partSetHeader: Tendermint_Types_CanonicalPartSetHeader {
    get {return _partSetHeader ?? Tendermint_Types_CanonicalPartSetHeader()}
    set {_partSetHeader = newValue}
  }
  /// Returns true if `partSetHeader` has been explicitly set.
  public var hasPartSetHeader: Bool {return self._partSetHeader != nil}
  /// Clears the value of `partSetHeader`. Subsequent reads from it will return its default value.
  public mutating func clearPartSetHeader() {self._partSetHeader = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _partSetHeader: Tendermint_Types_CanonicalPartSetHeader? = nil
}

public struct Tendermint_Types_CanonicalPartSetHeader {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var total: UInt32 = 0

  public var hash: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_Types_CanonicalProposal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// type alias for byte
  public var type: Tendermint_Types_SignedMsgType = .unknown

  /// canonicalization requires fixed size encoding here
  public var height: Int64 = 0

  /// canonicalization requires fixed size encoding here
  public var round: Int64 = 0

  public var polRound: Int64 = 0

  public var blockID: Tendermint_Types_CanonicalBlockID {
    get {return _blockID ?? Tendermint_Types_CanonicalBlockID()}
    set {_blockID = newValue}
  }
  /// Returns true if `blockID` has been explicitly set.
  public var hasBlockID: Bool {return self._blockID != nil}
  /// Clears the value of `blockID`. Subsequent reads from it will return its default value.
  public mutating func clearBlockID() {self._blockID = nil}

  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  public var chainID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _blockID: Tendermint_Types_CanonicalBlockID? = nil
  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Tendermint_Types_CanonicalVote {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// type alias for byte
  public var type: Tendermint_Types_SignedMsgType = .unknown

  /// canonicalization requires fixed size encoding here
  public var height: Int64 = 0

  /// canonicalization requires fixed size encoding here
  public var round: Int64 = 0

  public var blockID: Tendermint_Types_CanonicalBlockID {
    get {return _blockID ?? Tendermint_Types_CanonicalBlockID()}
    set {_blockID = newValue}
  }
  /// Returns true if `blockID` has been explicitly set.
  public var hasBlockID: Bool {return self._blockID != nil}
  /// Clears the value of `blockID`. Subsequent reads from it will return its default value.
  public mutating func clearBlockID() {self._blockID = nil}

  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  public var chainID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _blockID: Tendermint_Types_CanonicalBlockID? = nil
  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.types"

extension Tendermint_Types_CanonicalBlockID: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CanonicalBlockID"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .standard(proto: "part_set_header"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.hash) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._partSetHeader) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hash.isEmpty {
      try visitor.visitSingularBytesField(value: self.hash, fieldNumber: 1)
    }
    if let v = self._partSetHeader {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_CanonicalBlockID, rhs: Tendermint_Types_CanonicalBlockID) -> Bool {
    if lhs.hash != rhs.hash {return false}
    if lhs._partSetHeader != rhs._partSetHeader {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_CanonicalPartSetHeader: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CanonicalPartSetHeader"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "total"),
    2: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.total) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.hash) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.total != 0 {
      try visitor.visitSingularUInt32Field(value: self.total, fieldNumber: 1)
    }
    if !self.hash.isEmpty {
      try visitor.visitSingularBytesField(value: self.hash, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_CanonicalPartSetHeader, rhs: Tendermint_Types_CanonicalPartSetHeader) -> Bool {
    if lhs.total != rhs.total {return false}
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_CanonicalProposal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CanonicalProposal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "height"),
    3: .same(proto: "round"),
    4: .standard(proto: "pol_round"),
    5: .standard(proto: "block_id"),
    6: .same(proto: "timestamp"),
    7: .standard(proto: "chain_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularSFixed64Field(value: &self.height) }()
      case 3: try { try decoder.decodeSingularSFixed64Field(value: &self.round) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.polRound) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._blockID) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.chainID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.height != 0 {
      try visitor.visitSingularSFixed64Field(value: self.height, fieldNumber: 2)
    }
    if self.round != 0 {
      try visitor.visitSingularSFixed64Field(value: self.round, fieldNumber: 3)
    }
    if self.polRound != 0 {
      try visitor.visitSingularInt64Field(value: self.polRound, fieldNumber: 4)
    }
    if let v = self._blockID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.chainID.isEmpty {
      try visitor.visitSingularStringField(value: self.chainID, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_CanonicalProposal, rhs: Tendermint_Types_CanonicalProposal) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.height != rhs.height {return false}
    if lhs.round != rhs.round {return false}
    if lhs.polRound != rhs.polRound {return false}
    if lhs._blockID != rhs._blockID {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_CanonicalVote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CanonicalVote"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "height"),
    3: .same(proto: "round"),
    4: .standard(proto: "block_id"),
    5: .same(proto: "timestamp"),
    6: .standard(proto: "chain_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularSFixed64Field(value: &self.height) }()
      case 3: try { try decoder.decodeSingularSFixed64Field(value: &self.round) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._blockID) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.chainID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.height != 0 {
      try visitor.visitSingularSFixed64Field(value: self.height, fieldNumber: 2)
    }
    if self.round != 0 {
      try visitor.visitSingularSFixed64Field(value: self.round, fieldNumber: 3)
    }
    if let v = self._blockID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.chainID.isEmpty {
      try visitor.visitSingularStringField(value: self.chainID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_CanonicalVote, rhs: Tendermint_Types_CanonicalVote) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.height != rhs.height {return false}
    if lhs.round != rhs.round {return false}
    if lhs._blockID != rhs._blockID {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

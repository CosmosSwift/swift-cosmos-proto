// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/p2p/pex.proto
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

public struct Tendermint_P2p_PexAddress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var ip: String = String()

  public var port: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_P2p_PexRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_P2p_PexResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var addresses: [Tendermint_P2p_PexAddress] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_P2p_PexMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sum: Tendermint_P2p_PexMessage.OneOf_Sum? = nil

  public var pexRequest: Tendermint_P2p_PexRequest {
    get {
      if case .pexRequest(let v)? = sum {return v}
      return Tendermint_P2p_PexRequest()
    }
    set {sum = .pexRequest(newValue)}
  }

  public var pexResponse: Tendermint_P2p_PexResponse {
    get {
      if case .pexResponse(let v)? = sum {return v}
      return Tendermint_P2p_PexResponse()
    }
    set {sum = .pexResponse(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Sum: Equatable {
    case pexRequest(Tendermint_P2p_PexRequest)
    case pexResponse(Tendermint_P2p_PexResponse)

  #if !swift(>=4.1)
    public static func ==(lhs: Tendermint_P2p_PexMessage.OneOf_Sum, rhs: Tendermint_P2p_PexMessage.OneOf_Sum) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.pexRequest, .pexRequest): return {
        guard case .pexRequest(let l) = lhs, case .pexRequest(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.pexResponse, .pexResponse): return {
        guard case .pexResponse(let l) = lhs, case .pexResponse(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.p2p"

extension Tendermint_P2p_PexAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PexAddress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "ip"),
    3: .same(proto: "port"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ip) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.port) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.ip.isEmpty {
      try visitor.visitSingularStringField(value: self.ip, fieldNumber: 2)
    }
    if self.port != 0 {
      try visitor.visitSingularUInt32Field(value: self.port, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_PexAddress, rhs: Tendermint_P2p_PexAddress) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.ip != rhs.ip {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_PexRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PexRequest"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_PexRequest, rhs: Tendermint_P2p_PexRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_PexResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PexResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "addresses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.addresses) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.addresses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.addresses, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_PexResponse, rhs: Tendermint_P2p_PexResponse) -> Bool {
    if lhs.addresses != rhs.addresses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_PexMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PexMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pex_request"),
    2: .standard(proto: "pex_response"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Tendermint_P2p_PexRequest?
        if let current = self.sum {
          try decoder.handleConflictingOneOf()
          if case .pexRequest(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sum = .pexRequest(v)}
      }()
      case 2: try {
        var v: Tendermint_P2p_PexResponse?
        if let current = self.sum {
          try decoder.handleConflictingOneOf()
          if case .pexResponse(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sum = .pexResponse(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.sum {
    case .pexRequest?: try {
      guard case .pexRequest(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .pexResponse?: try {
      guard case .pexResponse(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_PexMessage, rhs: Tendermint_P2p_PexMessage) -> Bool {
    if lhs.sum != rhs.sum {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
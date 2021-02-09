// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/staking/v1beta1/genesis.proto
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

/// GenesisState defines the staking module's genesis state.
public struct Cosmos_Staking_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// params defines all the paramaters of related to deposit.
  public var params: Cosmos_Staking_V1beta1_Params {
    get {return _params ?? Cosmos_Staking_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  /// last_total_power tracks the total amounts of bonded tokens recorded during
  /// the previous end block.
  public var lastTotalPower: Data = Data()

  /// last_validator_powers is a special index that provides a historical list
  /// of the last-block's bonded validators.
  public var lastValidatorPowers: [Cosmos_Staking_V1beta1_LastValidatorPower] = []

  /// delegations defines the validator set at genesis.
  public var validators: [Cosmos_Staking_V1beta1_Validator] = []

  /// delegations defines the delegations active at genesis.
  public var delegations: [Cosmos_Staking_V1beta1_Delegation] = []

  /// unbonding_delegations defines the unbonding delegations active at genesis.
  public var unbondingDelegations: [Cosmos_Staking_V1beta1_UnbondingDelegation] = []

  /// redelegations defines the redelegations active at genesis.
  public var redelegations: [Cosmos_Staking_V1beta1_Redelegation] = []

  public var exported: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Cosmos_Staking_V1beta1_Params? = nil
}

/// LastValidatorPower required for validator set update logic.
public struct Cosmos_Staking_V1beta1_LastValidatorPower {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// address is the address of the validator.
  public var address: String = String()

  /// power defines the power of the validator.
  public var power: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.staking.v1beta1"

extension Cosmos_Staking_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "last_total_power"),
    3: .standard(proto: "last_validator_powers"),
    4: .same(proto: "validators"),
    5: .same(proto: "delegations"),
    6: .standard(proto: "unbonding_delegations"),
    7: .same(proto: "redelegations"),
    8: .same(proto: "exported"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.lastTotalPower) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.lastValidatorPowers) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.validators) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.delegations) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.unbondingDelegations) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.redelegations) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.exported) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.lastTotalPower.isEmpty {
      try visitor.visitSingularBytesField(value: self.lastTotalPower, fieldNumber: 2)
    }
    if !self.lastValidatorPowers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.lastValidatorPowers, fieldNumber: 3)
    }
    if !self.validators.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.validators, fieldNumber: 4)
    }
    if !self.delegations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.delegations, fieldNumber: 5)
    }
    if !self.unbondingDelegations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.unbondingDelegations, fieldNumber: 6)
    }
    if !self.redelegations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.redelegations, fieldNumber: 7)
    }
    if self.exported != false {
      try visitor.visitSingularBoolField(value: self.exported, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Staking_V1beta1_GenesisState, rhs: Cosmos_Staking_V1beta1_GenesisState) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.lastTotalPower != rhs.lastTotalPower {return false}
    if lhs.lastValidatorPowers != rhs.lastValidatorPowers {return false}
    if lhs.validators != rhs.validators {return false}
    if lhs.delegations != rhs.delegations {return false}
    if lhs.unbondingDelegations != rhs.unbondingDelegations {return false}
    if lhs.redelegations != rhs.redelegations {return false}
    if lhs.exported != rhs.exported {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Staking_V1beta1_LastValidatorPower: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LastValidatorPower"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "power"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.power) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if self.power != 0 {
      try visitor.visitSingularInt64Field(value: self.power, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Staking_V1beta1_LastValidatorPower, rhs: Cosmos_Staking_V1beta1_LastValidatorPower) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.power != rhs.power {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/state/types.proto
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

/// ABCIResponses retains the responses
/// of the various ABCI calls during block processing.
/// It is persisted to disk for each height before calling Commit.
public struct Tendermint_State_ABCIResponses {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var deliverTxs: [Tendermint_Abci_ResponseDeliverTx] = []

  public var endBlock: Tendermint_Abci_ResponseEndBlock {
    get {return _endBlock ?? Tendermint_Abci_ResponseEndBlock()}
    set {_endBlock = newValue}
  }
  /// Returns true if `endBlock` has been explicitly set.
  public var hasEndBlock: Bool {return self._endBlock != nil}
  /// Clears the value of `endBlock`. Subsequent reads from it will return its default value.
  public mutating func clearEndBlock() {self._endBlock = nil}

  public var beginBlock: Tendermint_Abci_ResponseBeginBlock {
    get {return _beginBlock ?? Tendermint_Abci_ResponseBeginBlock()}
    set {_beginBlock = newValue}
  }
  /// Returns true if `beginBlock` has been explicitly set.
  public var hasBeginBlock: Bool {return self._beginBlock != nil}
  /// Clears the value of `beginBlock`. Subsequent reads from it will return its default value.
  public mutating func clearBeginBlock() {self._beginBlock = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _endBlock: Tendermint_Abci_ResponseEndBlock? = nil
  fileprivate var _beginBlock: Tendermint_Abci_ResponseBeginBlock? = nil
}

/// ValidatorsInfo represents the latest validator set, or the last height it changed
public struct Tendermint_State_ValidatorsInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var validatorSet: Tendermint_Types_ValidatorSet {
    get {return _validatorSet ?? Tendermint_Types_ValidatorSet()}
    set {_validatorSet = newValue}
  }
  /// Returns true if `validatorSet` has been explicitly set.
  public var hasValidatorSet: Bool {return self._validatorSet != nil}
  /// Clears the value of `validatorSet`. Subsequent reads from it will return its default value.
  public mutating func clearValidatorSet() {self._validatorSet = nil}

  public var lastHeightChanged: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _validatorSet: Tendermint_Types_ValidatorSet? = nil
}

/// ConsensusParamsInfo represents the latest consensus params, or the last height it changed
public struct Tendermint_State_ConsensusParamsInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var consensusParams: Tendermint_Types_ConsensusParams {
    get {return _consensusParams ?? Tendermint_Types_ConsensusParams()}
    set {_consensusParams = newValue}
  }
  /// Returns true if `consensusParams` has been explicitly set.
  public var hasConsensusParams: Bool {return self._consensusParams != nil}
  /// Clears the value of `consensusParams`. Subsequent reads from it will return its default value.
  public mutating func clearConsensusParams() {self._consensusParams = nil}

  public var lastHeightChanged: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _consensusParams: Tendermint_Types_ConsensusParams? = nil
}

public struct Tendermint_State_Version {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var consensus: Tendermint_Version_Consensus {
    get {return _consensus ?? Tendermint_Version_Consensus()}
    set {_consensus = newValue}
  }
  /// Returns true if `consensus` has been explicitly set.
  public var hasConsensus: Bool {return self._consensus != nil}
  /// Clears the value of `consensus`. Subsequent reads from it will return its default value.
  public mutating func clearConsensus() {self._consensus = nil}

  public var software: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _consensus: Tendermint_Version_Consensus? = nil
}

public struct Tendermint_State_State {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var version: Tendermint_State_Version {
    get {return _storage._version ?? Tendermint_State_Version()}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {_uniqueStorage()._version = nil}

  /// immutable
  public var chainID: String {
    get {return _storage._chainID}
    set {_uniqueStorage()._chainID = newValue}
  }

  public var initialHeight: Int64 {
    get {return _storage._initialHeight}
    set {_uniqueStorage()._initialHeight = newValue}
  }

  /// LastBlockHeight=0 at genesis (ie. block(H=0) does not exist)
  public var lastBlockHeight: Int64 {
    get {return _storage._lastBlockHeight}
    set {_uniqueStorage()._lastBlockHeight = newValue}
  }

  public var lastBlockID: Tendermint_Types_BlockID {
    get {return _storage._lastBlockID ?? Tendermint_Types_BlockID()}
    set {_uniqueStorage()._lastBlockID = newValue}
  }
  /// Returns true if `lastBlockID` has been explicitly set.
  public var hasLastBlockID: Bool {return _storage._lastBlockID != nil}
  /// Clears the value of `lastBlockID`. Subsequent reads from it will return its default value.
  public mutating func clearLastBlockID() {_uniqueStorage()._lastBlockID = nil}

  public var lastBlockTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._lastBlockTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._lastBlockTime = newValue}
  }
  /// Returns true if `lastBlockTime` has been explicitly set.
  public var hasLastBlockTime: Bool {return _storage._lastBlockTime != nil}
  /// Clears the value of `lastBlockTime`. Subsequent reads from it will return its default value.
  public mutating func clearLastBlockTime() {_uniqueStorage()._lastBlockTime = nil}

  /// LastValidators is used to validate block.LastCommit.
  /// Validators are persisted to the database separately every time they change,
  /// so we can query for historical validator sets.
  /// Note that if s.LastBlockHeight causes a valset change,
  /// we set s.LastHeightValidatorsChanged = s.LastBlockHeight + 1 + 1
  /// Extra +1 due to nextValSet delay.
  public var nextValidators: Tendermint_Types_ValidatorSet {
    get {return _storage._nextValidators ?? Tendermint_Types_ValidatorSet()}
    set {_uniqueStorage()._nextValidators = newValue}
  }
  /// Returns true if `nextValidators` has been explicitly set.
  public var hasNextValidators: Bool {return _storage._nextValidators != nil}
  /// Clears the value of `nextValidators`. Subsequent reads from it will return its default value.
  public mutating func clearNextValidators() {_uniqueStorage()._nextValidators = nil}

  public var validators: Tendermint_Types_ValidatorSet {
    get {return _storage._validators ?? Tendermint_Types_ValidatorSet()}
    set {_uniqueStorage()._validators = newValue}
  }
  /// Returns true if `validators` has been explicitly set.
  public var hasValidators: Bool {return _storage._validators != nil}
  /// Clears the value of `validators`. Subsequent reads from it will return its default value.
  public mutating func clearValidators() {_uniqueStorage()._validators = nil}

  public var lastValidators: Tendermint_Types_ValidatorSet {
    get {return _storage._lastValidators ?? Tendermint_Types_ValidatorSet()}
    set {_uniqueStorage()._lastValidators = newValue}
  }
  /// Returns true if `lastValidators` has been explicitly set.
  public var hasLastValidators: Bool {return _storage._lastValidators != nil}
  /// Clears the value of `lastValidators`. Subsequent reads from it will return its default value.
  public mutating func clearLastValidators() {_uniqueStorage()._lastValidators = nil}

  public var lastHeightValidatorsChanged: Int64 {
    get {return _storage._lastHeightValidatorsChanged}
    set {_uniqueStorage()._lastHeightValidatorsChanged = newValue}
  }

  /// Consensus parameters used for validating blocks.
  /// Changes returned by EndBlock and updated after Commit.
  public var consensusParams: Tendermint_Types_ConsensusParams {
    get {return _storage._consensusParams ?? Tendermint_Types_ConsensusParams()}
    set {_uniqueStorage()._consensusParams = newValue}
  }
  /// Returns true if `consensusParams` has been explicitly set.
  public var hasConsensusParams: Bool {return _storage._consensusParams != nil}
  /// Clears the value of `consensusParams`. Subsequent reads from it will return its default value.
  public mutating func clearConsensusParams() {_uniqueStorage()._consensusParams = nil}

  public var lastHeightConsensusParamsChanged: Int64 {
    get {return _storage._lastHeightConsensusParamsChanged}
    set {_uniqueStorage()._lastHeightConsensusParamsChanged = newValue}
  }

  /// Merkle root of the results from executing prev block
  public var lastResultsHash: Data {
    get {return _storage._lastResultsHash}
    set {_uniqueStorage()._lastResultsHash = newValue}
  }

  /// the latest AppHash we've received from calling abci.Commit()
  public var appHash: Data {
    get {return _storage._appHash}
    set {_uniqueStorage()._appHash = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.state"

extension Tendermint_State_ABCIResponses: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ABCIResponses"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "deliver_txs"),
    2: .standard(proto: "end_block"),
    3: .standard(proto: "begin_block"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.deliverTxs) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endBlock) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._beginBlock) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.deliverTxs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.deliverTxs, fieldNumber: 1)
    }
    if let v = self._endBlock {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._beginBlock {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_State_ABCIResponses, rhs: Tendermint_State_ABCIResponses) -> Bool {
    if lhs.deliverTxs != rhs.deliverTxs {return false}
    if lhs._endBlock != rhs._endBlock {return false}
    if lhs._beginBlock != rhs._beginBlock {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_State_ValidatorsInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ValidatorsInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "validator_set"),
    2: .standard(proto: "last_height_changed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._validatorSet) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.lastHeightChanged) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._validatorSet {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.lastHeightChanged != 0 {
      try visitor.visitSingularInt64Field(value: self.lastHeightChanged, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_State_ValidatorsInfo, rhs: Tendermint_State_ValidatorsInfo) -> Bool {
    if lhs._validatorSet != rhs._validatorSet {return false}
    if lhs.lastHeightChanged != rhs.lastHeightChanged {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_State_ConsensusParamsInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConsensusParamsInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "consensus_params"),
    2: .standard(proto: "last_height_changed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._consensusParams) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.lastHeightChanged) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._consensusParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.lastHeightChanged != 0 {
      try visitor.visitSingularInt64Field(value: self.lastHeightChanged, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_State_ConsensusParamsInfo, rhs: Tendermint_State_ConsensusParamsInfo) -> Bool {
    if lhs._consensusParams != rhs._consensusParams {return false}
    if lhs.lastHeightChanged != rhs.lastHeightChanged {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_State_Version: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Version"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "consensus"),
    2: .same(proto: "software"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._consensus) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.software) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._consensus {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.software.isEmpty {
      try visitor.visitSingularStringField(value: self.software, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_State_Version, rhs: Tendermint_State_Version) -> Bool {
    if lhs._consensus != rhs._consensus {return false}
    if lhs.software != rhs.software {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_State_State: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".State"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .standard(proto: "chain_id"),
    14: .standard(proto: "initial_height"),
    3: .standard(proto: "last_block_height"),
    4: .standard(proto: "last_block_id"),
    5: .standard(proto: "last_block_time"),
    6: .standard(proto: "next_validators"),
    7: .same(proto: "validators"),
    8: .standard(proto: "last_validators"),
    9: .standard(proto: "last_height_validators_changed"),
    10: .standard(proto: "consensus_params"),
    11: .standard(proto: "last_height_consensus_params_changed"),
    12: .standard(proto: "last_results_hash"),
    13: .standard(proto: "app_hash"),
  ]

  fileprivate class _StorageClass {
    var _version: Tendermint_State_Version? = nil
    var _chainID: String = String()
    var _initialHeight: Int64 = 0
    var _lastBlockHeight: Int64 = 0
    var _lastBlockID: Tendermint_Types_BlockID? = nil
    var _lastBlockTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _nextValidators: Tendermint_Types_ValidatorSet? = nil
    var _validators: Tendermint_Types_ValidatorSet? = nil
    var _lastValidators: Tendermint_Types_ValidatorSet? = nil
    var _lastHeightValidatorsChanged: Int64 = 0
    var _consensusParams: Tendermint_Types_ConsensusParams? = nil
    var _lastHeightConsensusParamsChanged: Int64 = 0
    var _lastResultsHash: Data = Data()
    var _appHash: Data = Data()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _version = source._version
      _chainID = source._chainID
      _initialHeight = source._initialHeight
      _lastBlockHeight = source._lastBlockHeight
      _lastBlockID = source._lastBlockID
      _lastBlockTime = source._lastBlockTime
      _nextValidators = source._nextValidators
      _validators = source._validators
      _lastValidators = source._lastValidators
      _lastHeightValidatorsChanged = source._lastHeightValidatorsChanged
      _consensusParams = source._consensusParams
      _lastHeightConsensusParamsChanged = source._lastHeightConsensusParamsChanged
      _lastResultsHash = source._lastResultsHash
      _appHash = source._appHash
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._version) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._chainID) }()
        case 3: try { try decoder.decodeSingularInt64Field(value: &_storage._lastBlockHeight) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._lastBlockID) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._lastBlockTime) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._nextValidators) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._validators) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._lastValidators) }()
        case 9: try { try decoder.decodeSingularInt64Field(value: &_storage._lastHeightValidatorsChanged) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._consensusParams) }()
        case 11: try { try decoder.decodeSingularInt64Field(value: &_storage._lastHeightConsensusParamsChanged) }()
        case 12: try { try decoder.decodeSingularBytesField(value: &_storage._lastResultsHash) }()
        case 13: try { try decoder.decodeSingularBytesField(value: &_storage._appHash) }()
        case 14: try { try decoder.decodeSingularInt64Field(value: &_storage._initialHeight) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._version {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._chainID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._chainID, fieldNumber: 2)
      }
      if _storage._lastBlockHeight != 0 {
        try visitor.visitSingularInt64Field(value: _storage._lastBlockHeight, fieldNumber: 3)
      }
      if let v = _storage._lastBlockID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._lastBlockTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._nextValidators {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._validators {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if let v = _storage._lastValidators {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if _storage._lastHeightValidatorsChanged != 0 {
        try visitor.visitSingularInt64Field(value: _storage._lastHeightValidatorsChanged, fieldNumber: 9)
      }
      if let v = _storage._consensusParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if _storage._lastHeightConsensusParamsChanged != 0 {
        try visitor.visitSingularInt64Field(value: _storage._lastHeightConsensusParamsChanged, fieldNumber: 11)
      }
      if !_storage._lastResultsHash.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._lastResultsHash, fieldNumber: 12)
      }
      if !_storage._appHash.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._appHash, fieldNumber: 13)
      }
      if _storage._initialHeight != 0 {
        try visitor.visitSingularInt64Field(value: _storage._initialHeight, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_State_State, rhs: Tendermint_State_State) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._version != rhs_storage._version {return false}
        if _storage._chainID != rhs_storage._chainID {return false}
        if _storage._initialHeight != rhs_storage._initialHeight {return false}
        if _storage._lastBlockHeight != rhs_storage._lastBlockHeight {return false}
        if _storage._lastBlockID != rhs_storage._lastBlockID {return false}
        if _storage._lastBlockTime != rhs_storage._lastBlockTime {return false}
        if _storage._nextValidators != rhs_storage._nextValidators {return false}
        if _storage._validators != rhs_storage._validators {return false}
        if _storage._lastValidators != rhs_storage._lastValidators {return false}
        if _storage._lastHeightValidatorsChanged != rhs_storage._lastHeightValidatorsChanged {return false}
        if _storage._consensusParams != rhs_storage._consensusParams {return false}
        if _storage._lastHeightConsensusParamsChanged != rhs_storage._lastHeightConsensusParamsChanged {return false}
        if _storage._lastResultsHash != rhs_storage._lastResultsHash {return false}
        if _storage._appHash != rhs_storage._appHash {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

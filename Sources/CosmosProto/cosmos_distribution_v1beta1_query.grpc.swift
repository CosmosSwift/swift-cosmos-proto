//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/distribution/v1beta1/query.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Query defines the gRPC querier service for distribution module.
///
/// Usage: instantiate `Cosmos_Distribution_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Distribution_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Distribution_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Cosmos_Distribution_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryParamsRequest, Cosmos_Distribution_V1beta1_QueryParamsResponse>

  func validatorOutstandingRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest, Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse>

  func validatorCommission(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest, Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse>

  func validatorSlashes(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest, Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse>

  func delegationRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse>

  func delegationTotalRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse>

  func delegatorValidators(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest, Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse>

  func delegatorWithdrawAddress(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest, Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse>

  func communityPool(
    _ request: Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest, Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse>
}

extension Cosmos_Distribution_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.distribution.v1beta1.Query"
  }

  /// Params queries params of the distribution module.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func params(
    _ request: Cosmos_Distribution_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryParamsRequest, Cosmos_Distribution_V1beta1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/Params",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// ValidatorOutstandingRewards queries rewards of a validator address.
  ///
  /// - Parameters:
  ///   - request: Request to send to ValidatorOutstandingRewards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func validatorOutstandingRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest, Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/ValidatorOutstandingRewards",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidatorOutstandingRewardsInterceptors() ?? []
    )
  }

  /// ValidatorCommission queries accumulated commission for a validator.
  ///
  /// - Parameters:
  ///   - request: Request to send to ValidatorCommission.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func validatorCommission(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest, Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/ValidatorCommission",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidatorCommissionInterceptors() ?? []
    )
  }

  /// ValidatorSlashes queries slash events of a validator.
  ///
  /// - Parameters:
  ///   - request: Request to send to ValidatorSlashes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func validatorSlashes(
    _ request: Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest, Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/ValidatorSlashes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidatorSlashesInterceptors() ?? []
    )
  }

  /// DelegationRewards queries the total rewards accrued by a delegation.
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegationRewards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func delegationRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/DelegationRewards",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegationRewardsInterceptors() ?? []
    )
  }

  /// DelegationTotalRewards queries the total rewards accrued by a each
  /// validator.
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegationTotalRewards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func delegationTotalRewards(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/DelegationTotalRewards",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegationTotalRewardsInterceptors() ?? []
    )
  }

  /// DelegatorValidators queries the validators of a delegator.
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegatorValidators.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func delegatorValidators(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest, Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/DelegatorValidators",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegatorValidatorsInterceptors() ?? []
    )
  }

  /// DelegatorWithdrawAddress queries withdraw address of a delegator.
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegatorWithdrawAddress.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func delegatorWithdrawAddress(
    _ request: Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest, Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/DelegatorWithdrawAddress",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegatorWithdrawAddressInterceptors() ?? []
    )
  }

  /// CommunityPool queries the community pool coins.
  ///
  /// - Parameters:
  ///   - request: Request to send to CommunityPool.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func communityPool(
    _ request: Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest, Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.distribution.v1beta1.Query/CommunityPool",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCommunityPoolInterceptors() ?? []
    )
  }
}

public protocol Cosmos_Distribution_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryParamsRequest, Cosmos_Distribution_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'validatorOutstandingRewards'.
  func makeValidatorOutstandingRewardsInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest, Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse>]

  /// - Returns: Interceptors to use when invoking 'validatorCommission'.
  func makeValidatorCommissionInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest, Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse>]

  /// - Returns: Interceptors to use when invoking 'validatorSlashes'.
  func makeValidatorSlashesInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest, Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse>]

  /// - Returns: Interceptors to use when invoking 'delegationRewards'.
  func makeDelegationRewardsInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse>]

  /// - Returns: Interceptors to use when invoking 'delegationTotalRewards'.
  func makeDelegationTotalRewardsInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse>]

  /// - Returns: Interceptors to use when invoking 'delegatorValidators'.
  func makeDelegatorValidatorsInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest, Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse>]

  /// - Returns: Interceptors to use when invoking 'delegatorWithdrawAddress'.
  func makeDelegatorWithdrawAddressInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest, Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse>]

  /// - Returns: Interceptors to use when invoking 'communityPool'.
  func makeCommunityPoolInterceptors() -> [ClientInterceptor<Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest, Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse>]
}

public final class Cosmos_Distribution_V1beta1_QueryClient: Cosmos_Distribution_V1beta1_QueryClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Distribution_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.distribution.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Distribution_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query defines the gRPC querier service for distribution module.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Cosmos_Distribution_V1beta1_QueryProvider: CallHandlerProvider {
  var interceptors: Cosmos_Distribution_V1beta1_QueryServerInterceptorFactoryProtocol? { get }

  /// Params queries params of the distribution module.
  func params(request: Cosmos_Distribution_V1beta1_QueryParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryParamsResponse>

  /// ValidatorOutstandingRewards queries rewards of a validator address.
  func validatorOutstandingRewards(request: Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse>

  /// ValidatorCommission queries accumulated commission for a validator.
  func validatorCommission(request: Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse>

  /// ValidatorSlashes queries slash events of a validator.
  func validatorSlashes(request: Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse>

  /// DelegationRewards queries the total rewards accrued by a delegation.
  func delegationRewards(request: Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse>

  /// DelegationTotalRewards queries the total rewards accrued by a each
  /// validator.
  func delegationTotalRewards(request: Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse>

  /// DelegatorValidators queries the validators of a delegator.
  func delegatorValidators(request: Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse>

  /// DelegatorWithdrawAddress queries withdraw address of a delegator.
  func delegatorWithdrawAddress(request: Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse>

  /// CommunityPool queries the community pool coins.
  func communityPool(request: Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse>
}

extension Cosmos_Distribution_V1beta1_QueryProvider {
  public var serviceName: Substring { return "cosmos.distribution.v1beta1.Query" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Params":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        userFunction: self.params(request:context:)
      )

    case "ValidatorOutstandingRewards":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse>(),
        interceptors: self.interceptors?.makeValidatorOutstandingRewardsInterceptors() ?? [],
        userFunction: self.validatorOutstandingRewards(request:context:)
      )

    case "ValidatorCommission":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse>(),
        interceptors: self.interceptors?.makeValidatorCommissionInterceptors() ?? [],
        userFunction: self.validatorCommission(request:context:)
      )

    case "ValidatorSlashes":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse>(),
        interceptors: self.interceptors?.makeValidatorSlashesInterceptors() ?? [],
        userFunction: self.validatorSlashes(request:context:)
      )

    case "DelegationRewards":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse>(),
        interceptors: self.interceptors?.makeDelegationRewardsInterceptors() ?? [],
        userFunction: self.delegationRewards(request:context:)
      )

    case "DelegationTotalRewards":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse>(),
        interceptors: self.interceptors?.makeDelegationTotalRewardsInterceptors() ?? [],
        userFunction: self.delegationTotalRewards(request:context:)
      )

    case "DelegatorValidators":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse>(),
        interceptors: self.interceptors?.makeDelegatorValidatorsInterceptors() ?? [],
        userFunction: self.delegatorValidators(request:context:)
      )

    case "DelegatorWithdrawAddress":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse>(),
        interceptors: self.interceptors?.makeDelegatorWithdrawAddressInterceptors() ?? [],
        userFunction: self.delegatorWithdrawAddress(request:context:)
      )

    case "CommunityPool":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse>(),
        interceptors: self.interceptors?.makeCommunityPoolInterceptors() ?? [],
        userFunction: self.communityPool(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Cosmos_Distribution_V1beta1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'params'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeParamsInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryParamsRequest, Cosmos_Distribution_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when handling 'validatorOutstandingRewards'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeValidatorOutstandingRewardsInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsRequest, Cosmos_Distribution_V1beta1_QueryValidatorOutstandingRewardsResponse>]

  /// - Returns: Interceptors to use when handling 'validatorCommission'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeValidatorCommissionInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorCommissionRequest, Cosmos_Distribution_V1beta1_QueryValidatorCommissionResponse>]

  /// - Returns: Interceptors to use when handling 'validatorSlashes'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeValidatorSlashesInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryValidatorSlashesRequest, Cosmos_Distribution_V1beta1_QueryValidatorSlashesResponse>]

  /// - Returns: Interceptors to use when handling 'delegationRewards'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegationRewardsInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryDelegationRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationRewardsResponse>]

  /// - Returns: Interceptors to use when handling 'delegationTotalRewards'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegationTotalRewardsInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsRequest, Cosmos_Distribution_V1beta1_QueryDelegationTotalRewardsResponse>]

  /// - Returns: Interceptors to use when handling 'delegatorValidators'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegatorValidatorsInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsRequest, Cosmos_Distribution_V1beta1_QueryDelegatorValidatorsResponse>]

  /// - Returns: Interceptors to use when handling 'delegatorWithdrawAddress'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegatorWithdrawAddressInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressRequest, Cosmos_Distribution_V1beta1_QueryDelegatorWithdrawAddressResponse>]

  /// - Returns: Interceptors to use when handling 'communityPool'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCommunityPoolInterceptors() -> [ServerInterceptor<Cosmos_Distribution_V1beta1_QueryCommunityPoolRequest, Cosmos_Distribution_V1beta1_QueryCommunityPoolResponse>]
}

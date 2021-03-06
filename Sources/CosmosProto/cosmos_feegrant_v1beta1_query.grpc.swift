//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/feegrant/v1beta1/query.proto
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


/// Query defines the gRPC querier service.
///
/// Usage: instantiate `Cosmos_Feegrant_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Feegrant_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Feegrant_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func feeAllowance(
    _ request: Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse>

  func feeAllowances(
    _ request: Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse>
}

extension Cosmos_Feegrant_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.feegrant.v1beta1.Query"
  }

  /// FeeAllowance returns fee granted to the grantee by the granter.
  ///
  /// - Parameters:
  ///   - request: Request to send to FeeAllowance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func feeAllowance(
    _ request: Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.feegrant.v1beta1.Query/FeeAllowance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFeeAllowanceInterceptors() ?? []
    )
  }

  /// FeeAllowances returns all the grants for address.
  ///
  /// - Parameters:
  ///   - request: Request to send to FeeAllowances.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func feeAllowances(
    _ request: Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.feegrant.v1beta1.Query/FeeAllowances",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFeeAllowancesInterceptors() ?? []
    )
  }
}

public protocol Cosmos_Feegrant_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'feeAllowance'.
  func makeFeeAllowanceInterceptors() -> [ClientInterceptor<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse>]

  /// - Returns: Interceptors to use when invoking 'feeAllowances'.
  func makeFeeAllowancesInterceptors() -> [ClientInterceptor<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse>]
}

public final class Cosmos_Feegrant_V1beta1_QueryClient: Cosmos_Feegrant_V1beta1_QueryClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Feegrant_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.feegrant.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Feegrant_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Cosmos_Feegrant_V1beta1_QueryProvider: CallHandlerProvider {
  var interceptors: Cosmos_Feegrant_V1beta1_QueryServerInterceptorFactoryProtocol? { get }

  /// FeeAllowance returns fee granted to the grantee by the granter.
  func feeAllowance(request: Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse>

  /// FeeAllowances returns all the grants for address.
  func feeAllowances(request: Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse>
}

extension Cosmos_Feegrant_V1beta1_QueryProvider {
  public var serviceName: Substring { return "cosmos.feegrant.v1beta1.Query" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "FeeAllowance":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse>(),
        interceptors: self.interceptors?.makeFeeAllowanceInterceptors() ?? [],
        userFunction: self.feeAllowance(request:context:)
      )

    case "FeeAllowances":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse>(),
        interceptors: self.interceptors?.makeFeeAllowancesInterceptors() ?? [],
        userFunction: self.feeAllowances(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Cosmos_Feegrant_V1beta1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'feeAllowance'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeFeeAllowanceInterceptors() -> [ServerInterceptor<Cosmos_Feegrant_V1beta1_QueryFeeAllowanceRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowanceResponse>]

  /// - Returns: Interceptors to use when handling 'feeAllowances'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeFeeAllowancesInterceptors() -> [ServerInterceptor<Cosmos_Feegrant_V1beta1_QueryFeeAllowancesRequest, Cosmos_Feegrant_V1beta1_QueryFeeAllowancesResponse>]
}

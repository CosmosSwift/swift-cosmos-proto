//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/mint/v1beta1/query.proto
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


/// Query provides defines the gRPC querier service.
///
/// Usage: instantiate `Cosmos_Mint_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Mint_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Cosmos_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryParamsRequest, Cosmos_Mint_V1beta1_QueryParamsResponse>

  func inflation(
    _ request: Cosmos_Mint_V1beta1_QueryInflationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryInflationRequest, Cosmos_Mint_V1beta1_QueryInflationResponse>

  func annualProvisions(
    _ request: Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest, Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse>
}

extension Cosmos_Mint_V1beta1_QueryClientProtocol {
  public var serviceName: String {
    return "cosmos.mint.v1beta1.Query"
  }

  /// Params returns the total set of minting parameters.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func params(
    _ request: Cosmos_Mint_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryParamsRequest, Cosmos_Mint_V1beta1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.mint.v1beta1.Query/Params",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// Inflation returns the current minting inflation value.
  ///
  /// - Parameters:
  ///   - request: Request to send to Inflation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func inflation(
    _ request: Cosmos_Mint_V1beta1_QueryInflationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryInflationRequest, Cosmos_Mint_V1beta1_QueryInflationResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.mint.v1beta1.Query/Inflation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeInflationInterceptors() ?? []
    )
  }

  /// AnnualProvisions current minting annual provisions value.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnnualProvisions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func annualProvisions(
    _ request: Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest, Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.mint.v1beta1.Query/AnnualProvisions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAnnualProvisionsInterceptors() ?? []
    )
  }
}

public protocol Cosmos_Mint_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Cosmos_Mint_V1beta1_QueryParamsRequest, Cosmos_Mint_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'inflation'.
  func makeInflationInterceptors() -> [ClientInterceptor<Cosmos_Mint_V1beta1_QueryInflationRequest, Cosmos_Mint_V1beta1_QueryInflationResponse>]

  /// - Returns: Interceptors to use when invoking 'annualProvisions'.
  func makeAnnualProvisionsInterceptors() -> [ClientInterceptor<Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest, Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse>]
}

public final class Cosmos_Mint_V1beta1_QueryClient: Cosmos_Mint_V1beta1_QueryClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Mint_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.mint.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Mint_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query provides defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Cosmos_Mint_V1beta1_QueryProvider: CallHandlerProvider {
  var interceptors: Cosmos_Mint_V1beta1_QueryServerInterceptorFactoryProtocol? { get }

  /// Params returns the total set of minting parameters.
  func params(request: Cosmos_Mint_V1beta1_QueryParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Mint_V1beta1_QueryParamsResponse>

  /// Inflation returns the current minting inflation value.
  func inflation(request: Cosmos_Mint_V1beta1_QueryInflationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Mint_V1beta1_QueryInflationResponse>

  /// AnnualProvisions current minting annual provisions value.
  func annualProvisions(request: Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse>
}

extension Cosmos_Mint_V1beta1_QueryProvider {
  public var serviceName: Substring { return "cosmos.mint.v1beta1.Query" }

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
        requestDeserializer: ProtobufDeserializer<Cosmos_Mint_V1beta1_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Mint_V1beta1_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        userFunction: self.params(request:context:)
      )

    case "Inflation":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Mint_V1beta1_QueryInflationRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Mint_V1beta1_QueryInflationResponse>(),
        interceptors: self.interceptors?.makeInflationInterceptors() ?? [],
        userFunction: self.inflation(request:context:)
      )

    case "AnnualProvisions":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse>(),
        interceptors: self.interceptors?.makeAnnualProvisionsInterceptors() ?? [],
        userFunction: self.annualProvisions(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Cosmos_Mint_V1beta1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'params'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeParamsInterceptors() -> [ServerInterceptor<Cosmos_Mint_V1beta1_QueryParamsRequest, Cosmos_Mint_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when handling 'inflation'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeInflationInterceptors() -> [ServerInterceptor<Cosmos_Mint_V1beta1_QueryInflationRequest, Cosmos_Mint_V1beta1_QueryInflationResponse>]

  /// - Returns: Interceptors to use when handling 'annualProvisions'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAnnualProvisionsInterceptors() -> [ServerInterceptor<Cosmos_Mint_V1beta1_QueryAnnualProvisionsRequest, Cosmos_Mint_V1beta1_QueryAnnualProvisionsResponse>]
}

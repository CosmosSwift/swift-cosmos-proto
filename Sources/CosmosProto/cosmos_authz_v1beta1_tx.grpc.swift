//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/authz/v1beta1/tx.proto
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


/// Msg defines the authz Msg service.
///
/// Usage: instantiate `Cosmos_Authz_V1beta1_MsgClient`, then call methods of this protocol to make API calls.
public protocol Cosmos_Authz_V1beta1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Authz_V1beta1_MsgClientInterceptorFactoryProtocol? { get }

  func grantAuthorization(
    _ request: Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest, Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse>

  func execAuthorized(
    _ request: Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest, Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse>

  func revokeAuthorization(
    _ request: Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest, Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse>
}

extension Cosmos_Authz_V1beta1_MsgClientProtocol {
  public var serviceName: String {
    return "cosmos.authz.v1beta1.Msg"
  }

  /// GrantAuthorization grants the provided authorization to the grantee on the granter's
  /// account with the provided expiration time.
  ///
  /// - Parameters:
  ///   - request: Request to send to GrantAuthorization.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func grantAuthorization(
    _ request: Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest, Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.authz.v1beta1.Msg/GrantAuthorization",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGrantAuthorizationInterceptors() ?? []
    )
  }

  /// ExecAuthorized attempts to execute the provided messages using
  /// authorizations granted to the grantee. Each message should have only
  /// one signer corresponding to the granter of the authorization.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExecAuthorized.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func execAuthorized(
    _ request: Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest, Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.authz.v1beta1.Msg/ExecAuthorized",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecAuthorizedInterceptors() ?? []
    )
  }

  /// RevokeAuthorization revokes any authorization corresponding to the provided method name on the
  /// granter's account that has been granted to the grantee.
  ///
  /// - Parameters:
  ///   - request: Request to send to RevokeAuthorization.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func revokeAuthorization(
    _ request: Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest, Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.authz.v1beta1.Msg/RevokeAuthorization",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRevokeAuthorizationInterceptors() ?? []
    )
  }
}

public protocol Cosmos_Authz_V1beta1_MsgClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'grantAuthorization'.
  func makeGrantAuthorizationInterceptors() -> [ClientInterceptor<Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest, Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse>]

  /// - Returns: Interceptors to use when invoking 'execAuthorized'.
  func makeExecAuthorizedInterceptors() -> [ClientInterceptor<Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest, Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse>]

  /// - Returns: Interceptors to use when invoking 'revokeAuthorization'.
  func makeRevokeAuthorizationInterceptors() -> [ClientInterceptor<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest, Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse>]
}

public final class Cosmos_Authz_V1beta1_MsgClient: Cosmos_Authz_V1beta1_MsgClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cosmos_Authz_V1beta1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.authz.v1beta1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Authz_V1beta1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Msg defines the authz Msg service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Cosmos_Authz_V1beta1_MsgProvider: CallHandlerProvider {
  var interceptors: Cosmos_Authz_V1beta1_MsgServerInterceptorFactoryProtocol? { get }

  /// GrantAuthorization grants the provided authorization to the grantee on the granter's
  /// account with the provided expiration time.
  func grantAuthorization(request: Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse>

  /// ExecAuthorized attempts to execute the provided messages using
  /// authorizations granted to the grantee. Each message should have only
  /// one signer corresponding to the granter of the authorization.
  func execAuthorized(request: Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse>

  /// RevokeAuthorization revokes any authorization corresponding to the provided method name on the
  /// granter's account that has been granted to the grantee.
  func revokeAuthorization(request: Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse>
}

extension Cosmos_Authz_V1beta1_MsgProvider {
  public var serviceName: Substring { return "cosmos.authz.v1beta1.Msg" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GrantAuthorization":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse>(),
        interceptors: self.interceptors?.makeGrantAuthorizationInterceptors() ?? [],
        userFunction: self.grantAuthorization(request:context:)
      )

    case "ExecAuthorized":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse>(),
        interceptors: self.interceptors?.makeExecAuthorizedInterceptors() ?? [],
        userFunction: self.execAuthorized(request:context:)
      )

    case "RevokeAuthorization":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest>(),
        responseSerializer: ProtobufSerializer<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse>(),
        interceptors: self.interceptors?.makeRevokeAuthorizationInterceptors() ?? [],
        userFunction: self.revokeAuthorization(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Cosmos_Authz_V1beta1_MsgServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'grantAuthorization'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGrantAuthorizationInterceptors() -> [ServerInterceptor<Cosmos_Authz_V1beta1_MsgGrantAuthorizationRequest, Cosmos_Authz_V1beta1_MsgGrantAuthorizationResponse>]

  /// - Returns: Interceptors to use when handling 'execAuthorized'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeExecAuthorizedInterceptors() -> [ServerInterceptor<Cosmos_Authz_V1beta1_MsgExecAuthorizedRequest, Cosmos_Authz_V1beta1_MsgExecAuthorizedResponse>]

  /// - Returns: Interceptors to use when handling 'revokeAuthorization'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeRevokeAuthorizationInterceptors() -> [ServerInterceptor<Cosmos_Authz_V1beta1_MsgRevokeAuthorizationRequest, Cosmos_Authz_V1beta1_MsgRevokeAuthorizationResponse>]
}

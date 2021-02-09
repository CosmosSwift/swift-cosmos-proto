//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: tendermint/privval/service.proto
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


/// Usage: instantiate `Tendermint_Privval_PrivValidatorAPIClient`, then call methods of this protocol to make API calls.
public protocol Tendermint_Privval_PrivValidatorAPIClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Tendermint_Privval_PrivValidatorAPIClientInterceptorFactoryProtocol? { get }

  func getPubKey(
    _ request: Tendermint_Privval_PubKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Tendermint_Privval_PubKeyRequest, Tendermint_Privval_PubKeyResponse>

  func signVote(
    _ request: Tendermint_Privval_SignVoteRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Tendermint_Privval_SignVoteRequest, Tendermint_Privval_SignedVoteResponse>

  func signProposal(
    _ request: Tendermint_Privval_SignProposalRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Tendermint_Privval_SignProposalRequest, Tendermint_Privval_SignedProposalResponse>
}

extension Tendermint_Privval_PrivValidatorAPIClientProtocol {
  public var serviceName: String {
    return "tendermint.privval.PrivValidatorAPI"
  }

  /// Unary call to GetPubKey
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPubKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPubKey(
    _ request: Tendermint_Privval_PubKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Tendermint_Privval_PubKeyRequest, Tendermint_Privval_PubKeyResponse> {
    return self.makeUnaryCall(
      path: "/tendermint.privval.PrivValidatorAPI/GetPubKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPubKeyInterceptors() ?? []
    )
  }

  /// Unary call to SignVote
  ///
  /// - Parameters:
  ///   - request: Request to send to SignVote.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signVote(
    _ request: Tendermint_Privval_SignVoteRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Tendermint_Privval_SignVoteRequest, Tendermint_Privval_SignedVoteResponse> {
    return self.makeUnaryCall(
      path: "/tendermint.privval.PrivValidatorAPI/SignVote",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSignVoteInterceptors() ?? []
    )
  }

  /// Unary call to SignProposal
  ///
  /// - Parameters:
  ///   - request: Request to send to SignProposal.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signProposal(
    _ request: Tendermint_Privval_SignProposalRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Tendermint_Privval_SignProposalRequest, Tendermint_Privval_SignedProposalResponse> {
    return self.makeUnaryCall(
      path: "/tendermint.privval.PrivValidatorAPI/SignProposal",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSignProposalInterceptors() ?? []
    )
  }
}

public protocol Tendermint_Privval_PrivValidatorAPIClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getPubKey'.
  func makeGetPubKeyInterceptors() -> [ClientInterceptor<Tendermint_Privval_PubKeyRequest, Tendermint_Privval_PubKeyResponse>]

  /// - Returns: Interceptors to use when invoking 'signVote'.
  func makeSignVoteInterceptors() -> [ClientInterceptor<Tendermint_Privval_SignVoteRequest, Tendermint_Privval_SignedVoteResponse>]

  /// - Returns: Interceptors to use when invoking 'signProposal'.
  func makeSignProposalInterceptors() -> [ClientInterceptor<Tendermint_Privval_SignProposalRequest, Tendermint_Privval_SignedProposalResponse>]
}

public final class Tendermint_Privval_PrivValidatorAPIClient: Tendermint_Privval_PrivValidatorAPIClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Tendermint_Privval_PrivValidatorAPIClientInterceptorFactoryProtocol?

  /// Creates a client for the tendermint.privval.PrivValidatorAPI service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Tendermint_Privval_PrivValidatorAPIClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Tendermint_Privval_PrivValidatorAPIProvider: CallHandlerProvider {
  var interceptors: Tendermint_Privval_PrivValidatorAPIServerInterceptorFactoryProtocol? { get }

  func getPubKey(request: Tendermint_Privval_PubKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Tendermint_Privval_PubKeyResponse>

  func signVote(request: Tendermint_Privval_SignVoteRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Tendermint_Privval_SignedVoteResponse>

  func signProposal(request: Tendermint_Privval_SignProposalRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Tendermint_Privval_SignedProposalResponse>
}

extension Tendermint_Privval_PrivValidatorAPIProvider {
  public var serviceName: Substring { return "tendermint.privval.PrivValidatorAPI" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetPubKey":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Tendermint_Privval_PubKeyRequest>(),
        responseSerializer: ProtobufSerializer<Tendermint_Privval_PubKeyResponse>(),
        interceptors: self.interceptors?.makeGetPubKeyInterceptors() ?? [],
        userFunction: self.getPubKey(request:context:)
      )

    case "SignVote":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Tendermint_Privval_SignVoteRequest>(),
        responseSerializer: ProtobufSerializer<Tendermint_Privval_SignedVoteResponse>(),
        interceptors: self.interceptors?.makeSignVoteInterceptors() ?? [],
        userFunction: self.signVote(request:context:)
      )

    case "SignProposal":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Tendermint_Privval_SignProposalRequest>(),
        responseSerializer: ProtobufSerializer<Tendermint_Privval_SignedProposalResponse>(),
        interceptors: self.interceptors?.makeSignProposalInterceptors() ?? [],
        userFunction: self.signProposal(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Tendermint_Privval_PrivValidatorAPIServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getPubKey'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetPubKeyInterceptors() -> [ServerInterceptor<Tendermint_Privval_PubKeyRequest, Tendermint_Privval_PubKeyResponse>]

  /// - Returns: Interceptors to use when handling 'signVote'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSignVoteInterceptors() -> [ServerInterceptor<Tendermint_Privval_SignVoteRequest, Tendermint_Privval_SignedVoteResponse>]

  /// - Returns: Interceptors to use when handling 'signProposal'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSignProposalInterceptors() -> [ServerInterceptor<Tendermint_Privval_SignProposalRequest, Tendermint_Privval_SignedProposalResponse>]
}

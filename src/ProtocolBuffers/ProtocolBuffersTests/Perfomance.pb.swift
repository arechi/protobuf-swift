// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

public struct ProtoPerfomanceRoot {
  public static var sharedInstance : ProtoPerfomanceRoot {
   struct Static {
       static let instance : ProtoPerfomanceRoot = ProtoPerfomanceRoot()
   }
   return Static.instance
  }
  public var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
    SwiftDescriptorRoot.sharedInstance.registerAllExtensions(extensionRegistry)
  }
  public func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

public func == (lhs: ProtoPerfomanceBatch, rhs: ProtoPerfomanceBatch) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.batch == rhs.batch)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

public func == (lhs: ProtoPerfomance, rhs: ProtoPerfomance) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasInts == rhs.hasInts) && (!lhs.hasInts || lhs.ints == rhs.ints)
  fieldCheck = fieldCheck && (lhs.hasInts64 == rhs.hasInts64) && (!lhs.hasInts64 || lhs.ints64 == rhs.ints64)
  fieldCheck = fieldCheck && (lhs.hasDoubles == rhs.hasDoubles) && (!lhs.hasDoubles || lhs.doubles == rhs.doubles)
  fieldCheck = fieldCheck && (lhs.hasFloats == rhs.hasFloats) && (!lhs.hasFloats || lhs.floats == rhs.floats)
  fieldCheck = fieldCheck && (lhs.hasStr == rhs.hasStr) && (!lhs.hasStr || lhs.str == rhs.str)
  fieldCheck = fieldCheck && (lhs.hasBytes == rhs.hasBytes) && (!lhs.hasBytes || lhs.bytes == rhs.bytes)
  fieldCheck = fieldCheck && (lhs.hasDescription == rhs.hasDescription) && (!lhs.hasDescription || lhs.description_ == rhs.description_)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final public class ProtoPerfomanceBatch : GeneratedMessage, GeneratedMessageProtocol {
  public private(set) var batch:Array<ProtoPerfomance>  = Array<ProtoPerfomance>()
  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
    var isInitbatch:Bool = true
    for oneElementbatch in batch {
        if (!oneElementbatch.isInitialized()) {
            isInitbatch = false
            break 
        }
    }
    if !isInitbatch {
     return isInitbatch
     }
   return true
  }
  override public func writeToCodedOutputStream(output:CodedOutputStream) {
    for oneElementbatch in batch {
        output.writeMessage(1, value:oneElementbatch)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override public func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    for oneElementbatch in batch {
        serialize_size += oneElementbatch.computeMessageSize(1)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  public class func parseFromData(data:NSData) -> ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromData(data, extensionRegistry:ProtoPerfomanceRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromInputStream(input:NSInputStream) -> ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromInputStream(input).build()
  }
  public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream) -> ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromCodedInputStream(input).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPerfomanceBatch {
    return ProtoPerfomanceBatch.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func builder() -> ProtoPerfomanceBatchBuilder {
    return ProtoPerfomanceBatch.classBuilder() as ProtoPerfomanceBatchBuilder
  }
  public func builder() -> ProtoPerfomanceBatchBuilder {
    return classBuilder() as ProtoPerfomanceBatchBuilder
  }
  public override class func classBuilder() -> MessageBuilder {
    return ProtoPerfomanceBatchBuilder()
  }
  public override func classBuilder() -> MessageBuilder {
    return ProtoPerfomanceBatch.builder()
  }
  public func toBuilder() -> ProtoPerfomanceBatchBuilder {
    return ProtoPerfomanceBatch.builderWithPrototype(self)
  }
  public class func builderWithPrototype(prototype:ProtoPerfomanceBatch) -> ProtoPerfomanceBatchBuilder {
    return ProtoPerfomanceBatch.builder().mergeFrom(prototype)
  }
  override public func writeDescriptionTo(inout output:String, indent:String) {
    var batchElementIndex:Int = 0
    for oneElementbatch in batch {
        output += "\(indent) batch[\(batchElementIndex)] {\n"
        oneElementbatch.writeDescriptionTo(&output, indent:"\(indent)  ")
        output += "\(indent)}\n"
        batchElementIndex++
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          for oneElementbatch in batch {
              hashCode = (hashCode &* 31) &+ oneElementbatch.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "ProtoPerfomanceBatch"
  }
  override public func className() -> String {
      return "ProtoPerfomanceBatch"
  }
  override public func classMetaType() -> GeneratedMessage.Type {
      return ProtoPerfomanceBatch.self
  }


  //Meta information declaration end

}

final public class ProtoPerfomanceBatchBuilder : GeneratedMessageBuilder {
  private var builderResult:ProtoPerfomanceBatch

  required override public init () {
     builderResult = ProtoPerfomanceBatch()
     super.init()
  }
  public var batch:Array<ProtoPerfomance> {
       get {
           return builderResult.batch
       }
       set (value) {
           builderResult.batch = value
       }
  }
  func setBatch(value:Array<ProtoPerfomance>)-> ProtoPerfomanceBatchBuilder {
    self.batch = value
    return self
  }
  public func clearBatch() -> ProtoPerfomanceBatchBuilder {
    builderResult.batch.removeAll(keepCapacity: false)
    return self
  }
  override public var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  public override func clear() -> ProtoPerfomanceBatchBuilder {
    builderResult = ProtoPerfomanceBatch()
    return self
  }
  public override func clone() -> ProtoPerfomanceBatchBuilder {
    return ProtoPerfomanceBatch.builderWithPrototype(builderResult)
  }
  public override func build() -> ProtoPerfomanceBatch {
       checkInitialized()
       return buildPartial()
  }
  public func buildPartial() -> ProtoPerfomanceBatch {
    var returnMe:ProtoPerfomanceBatch = builderResult
    return returnMe
  }
  public func mergeFrom(other:ProtoPerfomanceBatch) -> ProtoPerfomanceBatchBuilder {
    if (other == ProtoPerfomanceBatch()) {
     return self
    }
    if !other.batch.isEmpty  {
       builderResult.batch += other.batch
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream) ->ProtoPerfomanceBatchBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPerfomanceBatchBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        var subBuilder = ProtoPerfomance.builder()
        input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
        batch += [subBuilder.buildPartial()]

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

final public class ProtoPerfomance : GeneratedMessage, GeneratedMessageProtocol {
  public private(set) var hasInts:Bool = false
  public private(set) var ints:Int32 = Int32(0)

  public private(set) var hasInts64:Bool = false
  public private(set) var ints64:Int64 = Int64(0)

  public private(set) var hasDoubles:Bool = false
  public private(set) var doubles:Double = Double(0)

  public private(set) var hasFloats:Bool = false
  public private(set) var floats:Float = Float(0)

  public private(set) var hasStr:Bool = false
  public private(set) var str:String = ""

  public private(set) var hasBytes:Bool = false
  public private(set) var bytes:NSData = NSData()

  public private(set) var hasDescription:Bool = false
  public private(set) var description_:String = ""

  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
    if !hasInts {
      return false
    }
    if !hasInts64 {
      return false
    }
    if !hasDoubles {
      return false
    }
    if !hasFloats {
      return false
    }
   return true
  }
  override public func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasInts {
      output.writeInt32(1, value:ints)
    }
    if hasInts64 {
      output.writeInt64(2, value:ints64)
    }
    if hasDoubles {
      output.writeDouble(3, value:doubles)
    }
    if hasFloats {
      output.writeFloat(4, value:floats)
    }
    if hasStr {
      output.writeString(5, value:str)
    }
    if hasBytes {
      output.writeData(6, value:bytes)
    }
    if hasDescription {
      output.writeString(7, value:description_)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override public func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasInts {
      serialize_size += ints.computeInt32Size(1)
    }
    if hasInts64 {
      serialize_size += ints64.computeInt64Size(2)
    }
    if hasDoubles {
      serialize_size += doubles.computeDoubleSize(3)
    }
    if hasFloats {
      serialize_size += floats.computeFloatSize(4)
    }
    if hasStr {
      serialize_size += str.computeStringSize(5)
    }
    if hasBytes {
      serialize_size += bytes.computeDataSize(6)
    }
    if hasDescription {
      serialize_size += description_.computeStringSize(7)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  public class func parseFromData(data:NSData) -> ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromData(data, extensionRegistry:ProtoPerfomanceRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromInputStream(input:NSInputStream) -> ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromInputStream(input).build()
  }
  public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream) -> ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromCodedInputStream(input).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPerfomance {
    return ProtoPerfomance.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func builder() -> ProtoPerfomanceBuilder {
    return ProtoPerfomance.classBuilder() as ProtoPerfomanceBuilder
  }
  public func builder() -> ProtoPerfomanceBuilder {
    return classBuilder() as ProtoPerfomanceBuilder
  }
  public override class func classBuilder() -> MessageBuilder {
    return ProtoPerfomanceBuilder()
  }
  public override func classBuilder() -> MessageBuilder {
    return ProtoPerfomance.builder()
  }
  public func toBuilder() -> ProtoPerfomanceBuilder {
    return ProtoPerfomance.builderWithPrototype(self)
  }
  public class func builderWithPrototype(prototype:ProtoPerfomance) -> ProtoPerfomanceBuilder {
    return ProtoPerfomance.builder().mergeFrom(prototype)
  }
  override public func writeDescriptionTo(inout output:String, indent:String) {
    if hasInts {
      output += "\(indent) ints: \(ints) \n"
    }
    if hasInts64 {
      output += "\(indent) ints64: \(ints64) \n"
    }
    if hasDoubles {
      output += "\(indent) doubles: \(doubles) \n"
    }
    if hasFloats {
      output += "\(indent) floats: \(floats) \n"
    }
    if hasStr {
      output += "\(indent) str: \(str) \n"
    }
    if hasBytes {
      output += "\(indent) bytes: \(bytes) \n"
    }
    if hasDescription {
      output += "\(indent) description_: \(description_) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasInts {
             hashCode = (hashCode &* 31) &+ ints.hashValue
          }
          if hasInts64 {
             hashCode = (hashCode &* 31) &+ ints64.hashValue
          }
          if hasDoubles {
             hashCode = (hashCode &* 31) &+ doubles.hashValue
          }
          if hasFloats {
             hashCode = (hashCode &* 31) &+ floats.hashValue
          }
          if hasStr {
             hashCode = (hashCode &* 31) &+ str.hashValue
          }
          if hasBytes {
             hashCode = (hashCode &* 31) &+ bytes.hashValue
          }
          if hasDescription {
             hashCode = (hashCode &* 31) &+ description_.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "ProtoPerfomance"
  }
  override public func className() -> String {
      return "ProtoPerfomance"
  }
  override public func classMetaType() -> GeneratedMessage.Type {
      return ProtoPerfomance.self
  }


  //Meta information declaration end

}

final public class ProtoPerfomanceBuilder : GeneratedMessageBuilder {
  private var builderResult:ProtoPerfomance

  required override public init () {
     builderResult = ProtoPerfomance()
     super.init()
  }
  public var hasInts:Bool {
       get {
            return builderResult.hasInts
       }
  }
  public var ints:Int32 {
       get {
            return builderResult.ints
       }
       set (value) {
           builderResult.hasInts = true
           builderResult.ints = value
       }
  }
  func setInts(value:Int32)-> ProtoPerfomanceBuilder {
    self.ints = value
    return self
  }
  public func clearInts() -> ProtoPerfomanceBuilder{
       builderResult.hasInts = false
       builderResult.ints = Int32(0)
       return self
  }
  public var hasInts64:Bool {
       get {
            return builderResult.hasInts64
       }
  }
  public var ints64:Int64 {
       get {
            return builderResult.ints64
       }
       set (value) {
           builderResult.hasInts64 = true
           builderResult.ints64 = value
       }
  }
  func setInts64(value:Int64)-> ProtoPerfomanceBuilder {
    self.ints64 = value
    return self
  }
  public func clearInts64() -> ProtoPerfomanceBuilder{
       builderResult.hasInts64 = false
       builderResult.ints64 = Int64(0)
       return self
  }
  public var hasDoubles:Bool {
       get {
            return builderResult.hasDoubles
       }
  }
  public var doubles:Double {
       get {
            return builderResult.doubles
       }
       set (value) {
           builderResult.hasDoubles = true
           builderResult.doubles = value
       }
  }
  func setDoubles(value:Double)-> ProtoPerfomanceBuilder {
    self.doubles = value
    return self
  }
  public func clearDoubles() -> ProtoPerfomanceBuilder{
       builderResult.hasDoubles = false
       builderResult.doubles = Double(0)
       return self
  }
  public var hasFloats:Bool {
       get {
            return builderResult.hasFloats
       }
  }
  public var floats:Float {
       get {
            return builderResult.floats
       }
       set (value) {
           builderResult.hasFloats = true
           builderResult.floats = value
       }
  }
  func setFloats(value:Float)-> ProtoPerfomanceBuilder {
    self.floats = value
    return self
  }
  public func clearFloats() -> ProtoPerfomanceBuilder{
       builderResult.hasFloats = false
       builderResult.floats = Float(0)
       return self
  }
  public var hasStr:Bool {
       get {
            return builderResult.hasStr
       }
  }
  public var str:String {
       get {
            return builderResult.str
       }
       set (value) {
           builderResult.hasStr = true
           builderResult.str = value
       }
  }
  func setStr(value:String)-> ProtoPerfomanceBuilder {
    self.str = value
    return self
  }
  public func clearStr() -> ProtoPerfomanceBuilder{
       builderResult.hasStr = false
       builderResult.str = ""
       return self
  }
  public var hasBytes:Bool {
       get {
            return builderResult.hasBytes
       }
  }
  public var bytes:NSData {
       get {
            return builderResult.bytes
       }
       set (value) {
           builderResult.hasBytes = true
           builderResult.bytes = value
       }
  }
  func setBytes(value:NSData)-> ProtoPerfomanceBuilder {
    self.bytes = value
    return self
  }
  public func clearBytes() -> ProtoPerfomanceBuilder{
       builderResult.hasBytes = false
       builderResult.bytes = NSData()
       return self
  }
  public var hasDescription:Bool {
       get {
            return builderResult.hasDescription
       }
  }
  public var description_:String {
       get {
            return builderResult.description_
       }
       set (value) {
           builderResult.hasDescription = true
           builderResult.description_ = value
       }
  }
  func setDescription(value:String)-> ProtoPerfomanceBuilder {
    self.description_ = value
    return self
  }
  public func clearDescription() -> ProtoPerfomanceBuilder{
       builderResult.hasDescription = false
       builderResult.description_ = ""
       return self
  }
  override public var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  public override func clear() -> ProtoPerfomanceBuilder {
    builderResult = ProtoPerfomance()
    return self
  }
  public override func clone() -> ProtoPerfomanceBuilder {
    return ProtoPerfomance.builderWithPrototype(builderResult)
  }
  public override func build() -> ProtoPerfomance {
       checkInitialized()
       return buildPartial()
  }
  public func buildPartial() -> ProtoPerfomance {
    var returnMe:ProtoPerfomance = builderResult
    return returnMe
  }
  public func mergeFrom(other:ProtoPerfomance) -> ProtoPerfomanceBuilder {
    if (other == ProtoPerfomance()) {
     return self
    }
    if other.hasInts {
         ints = other.ints
    }
    if other.hasInts64 {
         ints64 = other.ints64
    }
    if other.hasDoubles {
         doubles = other.doubles
    }
    if other.hasFloats {
         floats = other.floats
    }
    if other.hasStr {
         str = other.str
    }
    if other.hasBytes {
         bytes = other.bytes
    }
    if other.hasDescription {
         description_ = other.description_
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream) ->ProtoPerfomanceBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPerfomanceBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        ints = input.readInt32()

      case 16 :
        ints64 = input.readInt64()

      case 25 :
        doubles = input.readDouble()

      case 37 :
        floats = input.readFloat()

      case 42 :
        str = input.readString()

      case 50 :
        bytes = input.readData()

      case 58 :
        description_ = input.readString()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}


// @@protoc_insertion_point(global_scope)

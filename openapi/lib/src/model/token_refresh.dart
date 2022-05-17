//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_refresh.g.dart';

/// TokenRefresh
///
/// Properties:
/// * [refresh] 
/// * [access] 
abstract class TokenRefresh implements Built<TokenRefresh, TokenRefreshBuilder> {
    @BuiltValueField(wireName: r'refresh')
    String get refresh;

    @BuiltValueField(wireName: r'access')
    String? get access;

    TokenRefresh._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TokenRefreshBuilder b) => b;

    factory TokenRefresh([void updates(TokenRefreshBuilder b)]) = _$TokenRefresh;

    @BuiltValueSerializer(custom: true)
    static Serializer<TokenRefresh> get serializer => _$TokenRefreshSerializer();
}

class _$TokenRefreshSerializer implements StructuredSerializer<TokenRefresh> {
    @override
    final Iterable<Type> types = const [TokenRefresh, _$TokenRefresh];

    @override
    final String wireName = r'TokenRefresh';

    @override
    Iterable<Object?> serialize(Serializers serializers, TokenRefresh object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'refresh')
            ..add(serializers.serialize(object.refresh,
                specifiedType: const FullType(String)));
        if (object.access != null) {
            result
                ..add(r'access')
                ..add(serializers.serialize(object.access,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    TokenRefresh deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TokenRefreshBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'refresh':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.refresh = valueDes;
                    break;
                case r'access':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.access = valueDes;
                    break;
            }
        }
        return result.build();
    }
}


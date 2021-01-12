
@class NSString, NSArray, NSDictionary, NSMutableDictionary;

@interface PSSpecifier : NSObject {
	id target;
	SEL getter;
	SEL setter;
	SEL action;
	SEL cancel;
	Class detailControllerClass;
	long long cellType;
	Class editPaneClass;
	long long keyboardType;
	long long autoCapsType;
	long long autoCorrectionType;
	unsigned long long textFieldType;
	NSString* _name;
	NSArray* _values;
	NSDictionary* _titleDict;
	NSDictionary* _shortTitleDict;
	id _userInfo;
	NSMutableDictionary* _properties;
	SEL _confirmationAction;
	SEL _confirmationCancelAction;
	SEL _buttonAction;
	SEL _controllerLoadAction;
	BOOL _showContentString;
	SEL _confirmationAlternateAction;
	id _weakUserInfo;
}
-(void)setProperty:(id)arg1 forKey:(id)arg2;
-(id)propertyForKey:(id)arg1;
@end
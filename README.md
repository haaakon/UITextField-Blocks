UITextField-Blocks
==================

Adds blocks to all UITextField delegate methods with a category, no subclassing. Also allows the use of delegate methods if no block is set.


USAGE
=====

#### TextFieldShouldBeginEditing
```objective-c

#import <UITextField+Blocks.h>
UITextField *aTextField;
[aTextField setShouldBegindEditingBlock:^BOOL(UITextField *textField) {
        // do your stuff here
        return YES;
}];
    
```

#### textFieldDidBeginEditing

```objective-c
[aTextField setDidBeginEditingBlock:^(UITextField *textField) {
        // do your stuff here
}];
    
```

#### textFieldShouldEndEditing

```objective-c
[aTextField setShouldEndEditingBlock:^BOOL(UITextField *textField) {
        // do your stuff here
        return YES;
  }];
    
```

#### textFieldDidEndEditing

```objective-c
[aTextField setDidEndEditingBlock:^BOOL(UITextField *textField) {
        // do your stuff here
  }];
    
```

#### textField:shouldChangeCharactersInRange:replacementString:

```objective-c
[aTextField setShouldChangeCharactersInRangeBlock:^BOOL(UITextField *textField, NSRange range, NSString *replacementString) {
        // do your stuff here
        return YES;
}];
```
#### textFieldShouldClear

```objective-c
[aTextField setShouldClearBlock:^BOOL(UITextField *textField) {
        // do your stuff here
        return NO;
}];
```
#### textFieldShouldReturn
```objective-c
[aTextField setShouldReturnBlock:^BOOL(UITextField *textField) {
        // do your stuff here
        return NO;
}];
```    

Remember, you can also use ordinary delegate methods for all methods you don't define as blocks.

In this example, shouldBeginEditing is defined as a block, and didEndEditing is a delegate method

```objective-c

aTextField.delegate = self;

[aTextField setShouldBegindEditingBlock:^BOOL(UITextField *textField) {
        // do your stuff here
        return YES;
    }];

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    // do your stuff here
}
```   

### LICENSE

Copyright (C) 2013 Developed by Håkon Bogen

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE

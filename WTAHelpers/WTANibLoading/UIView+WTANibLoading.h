//
//  UIView+WTANibLoading.h
//  WTAHelpers
//
//  Copyright (c) 2015 WillowTree, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 This category adds a method to `UIView` to make nib loading easier.
 */
@interface UIView (WTANibLoading)

/**
 Method to load a nib with the nib name.
 
 @param nibName File name of the nib to be loaded.
 @return The loaded nib.
 */
+ (UINib *)wta_nibNamed:(NSString *)nibName;

/**
 Method to load a nib with the view's class name.
 
 @return The loaded nib.
 */
+ (UINib *)wta_nib;

/**
 Instantiates the first occurence of the view's class in the nib.
 
 @param nib to load the view from.
 @return The newly instantiated view.
 */
+ (__nullable instancetype)wta_loadInstanceWithNib:(UINib *)nib;

/**
 Instantiates the first occurence of the view's class in the nib. This method loads the nib with the name equal to the view's class.
 
 @return The newly instantiated view.
 */
+ (__nullable instancetype)wta_loadInstanceFromNib;

@end

NS_ASSUME_NONNULL_END

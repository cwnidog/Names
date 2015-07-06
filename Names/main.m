//
//  main.m
//  Names
//
//  Created by John Leonard on 7/6/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    // Read in a file as a huge string, without error checking
    NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
    
    // break it into an array of strings
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    
    // Go through the array one string at a time
    for (NSString *n in names)
    {
      // Look for the string "aa", without considering case
      NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
      
      // was it found?
      if (r.location != NSNotFound)
      {
        NSLog(@"%@", n);
      }
    } // for n
  } // autoreleasepool
    return 0;
} // main()

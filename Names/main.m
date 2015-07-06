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
  NSString *lowerName = @"";
  
  @autoreleasepool
  {
    // Read in a file as a huge string, without error checking
    NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
    
    // break it into an array of strings
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    
    // get the list of words as a really long string
    NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
    
    // break it up into an array of words
    NSArray *words = [wordString componentsSeparatedByString:@"\n"];
    
    // Go through the array of proper names one string at a time and see if it's in the array of words
    for (NSString *n in names)
    {
      lowerName = [n lowercaseString]; // looking for words, not names, so change name to all lower-case
      for (NSString *w in words)
      {
        // do they match?
        if ([lowerName isEqualToString:w]) // if true, then it's a match
        {
            NSLog(@"%@", w);
        }
        
      } // for w
      
    } // for n
    
  } // autoreleasepool
    return 0;
} // main()

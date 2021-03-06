//
//  NSURL+Directories.m
//  nysci
//
//  Created by Dave on 1/5/13.
//  Copyright (c) 2013 Local Projects. All rights reserved.
//

#import "NSURL+BOTDirectories.h"

@implementation NSURL(BOTDirectories)

+ (NSURL *) documentsDirectory {
    NSURL *docUrl = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    return docUrl;
}

@end

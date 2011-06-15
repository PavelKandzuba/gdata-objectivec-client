/* Copyright (c) 2009 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//
//  GDataFeedTranslationMemory.m
//

#if !GDATA_REQUIRE_SERVICE_INCLUDES || GDATA_INCLUDE_TRANSLATION_SERVICE

#import "GDataFeedTranslationMemory.h"
#import "GDataEntryTranslationMemory.h"
#import "GDataTranslationConstants.h"

@implementation GDataFeedTranslationMemory

+ (GDataFeedTranslationMemory *)memoryFeed {

  GDataFeedTranslationMemory *feed = [self object];

  [feed setNamespaces:[GDataTranslationConstants translationNamespaces]];

  return feed;
}

+ (NSString *)standardKindAttributeValue {
  return kGDataKindTranslationMemory;
}

+ (void)load {
  [self registerFeedClass];
}

- (Class)classForEntries {
  return [GDataEntryTranslationMemory class];
}

+ (NSString *)defaultServiceVersion {
  return kGDataTranslationDefaultServiceVersion;
}

@end

#endif // !GDATA_REQUIRE_SERVICE_INCLUDES || GDATA_INCLUDE_TRANSLATION_SERVICE

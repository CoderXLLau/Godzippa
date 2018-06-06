// main.m
// Copyright (c) 2012 – 2018 Mattt (http://mat.tt/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

@import Foundation;
@import Godzippa;

int main(__unused int argc, __unused const char *argv[]) {
    @autoreleasepool {
        /*
         2018-06-06 21:09:33.942772+0800 Godzippa Example[87994:7539339] 测试1 ： originalData.length = 17 , compressedData.length = 37 , decompressedData.length = 17
         2018-06-06 21:09:39.155985+0800 Godzippa Example[87994:7539339] 测试1 ： originalData.length = 3486 , compressedData.length = 75 , decompressedData.length = 3486
         Program ended with exit code: 0
         */
        
        // 测试1 ， 压缩后会变大
        {
            NSData *originalData = [@"Look out! It's..." dataUsingEncoding:NSUTF8StringEncoding];
            NSData *compressedData = [originalData dataByGZipCompressingWithError:nil];
            NSData *decompressedData = [compressedData dataByGZipDecompressingDataWithError:nil];
            NSLog(@"%@ %@", [[NSString alloc] initWithData:decompressedData encoding:NSUTF8StringEncoding], @"Godzippa!");
            NSLog(@"测试1 ： originalData.length = %zd , compressedData.length = %zd , decompressedData.length = %zd",originalData.length,compressedData.length,decompressedData.length);
        }
        //测试2  压缩后会减小
        {
            NSData *originalData = [@"Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's... ook out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's... ook out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's... ook out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's... ook out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's...Look out! It's... " dataUsingEncoding:NSUTF8StringEncoding];
            NSData *compressedData = [originalData dataByGZipCompressingWithError:nil];
            NSData *decompressedData = [compressedData dataByGZipDecompressingDataWithError:nil];
//            NSLog(@"%@ %@", [[NSString alloc] initWithData:decompressedData encoding:NSUTF8StringEncoding], @"Godzippa!");
            NSLog(@"测试1 ： originalData.length = %zd , compressedData.length = %zd , decompressedData.length = %zd",originalData.length,compressedData.length,decompressedData.length);
        }
    }

    return 0;
}

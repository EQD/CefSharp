// Copyright � 2010-2016 The CefSharp Authors. All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be found in the LICENSE file.

using System;

namespace MavoraCefSharp.Internals
{
    public sealed class MethodInvocationCompleteArgs : EventArgs
    {
        public MethodInvocationResult Result { get; private set; }

        public MethodInvocationCompleteArgs(MethodInvocationResult result)
        {
            Result = result;
        }
    }
}

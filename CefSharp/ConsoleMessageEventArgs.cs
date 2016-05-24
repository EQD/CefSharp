// Copyright � 2010-2016 The CefSharp Authors. All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be found in the LICENSE file.

using System;

namespace MavoraCefSharp
{
    /// <summary>
    /// Event arguments to the ConsoleMessage event handler set up in IWebBrowser.
    /// </summary>
    public class ConsoleMessageEventArgs : EventArgs
    {
        public ConsoleMessageEventArgs(string message, string source, int line)
        {
            Message = message;
            Source = source;
            Line = line;
        }

        /// <summary>
        /// The message text of the console message.
        /// </summary>
        public string Message { get; private set; }

        /// <summary>
        /// The source of the console message.
        /// </summary>
        public string Source { get; private set; }

        /// <summary>
        /// The line number that generated the console message.
        /// </summary>
        public int Line { get; private set; }
    }
}

#!/usr/bin/python3

import sys

all_event_uids = set()
uid_seed = 0

def output_within_size (line, size):
   if (len(line) > size):
      print(line[:size], end = "\r\n")

      output_within_size(
         (" " + line[size:]),
         size
      )
   else:
      if (len(line.strip()) > 0):
         print(line, end = "\r\n")

def assert_unique_uid (line):
   global uid_seed
   global all_event_uids

   uid = line[len("UID:"):]

   if (uid in all_event_uids):
      uid_seed = uid_seed + 1
      return assert_unique_uid("UID:unique_id_" + str(uid_seed))
   else:
      all_event_uids.add(uid)

      return line

for line in sys.stdin:
   while ((line[-1] == "\r") or (line[-1] == "\n")):
      line = line[:-1]

   if (line.startswith("UID:")):
      line = assert_unique_uid(line)

   if (len(line.strip()) > 0):
      output_within_size(line, 75)

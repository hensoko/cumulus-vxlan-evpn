# Leaf-Spine Architecture with EVPN / VxLAN support

## Topology

	+----------------+                 +----------------+
	|                |                 |                |
	|    Spine 1     |         +-------+    Spine 2     |
	|                |         |       |                |
	+-------+-----+--+         |       +--------+-------+
	        |     |            |                |
	        |     +-----------------------+     |
	        |                  |          |     |
	        |                  |          |     |
	+-------+--------+         |       +--+-----+-------+
	|                |         |       |                |
	|    Leaf 1      +---------+       |    Leaf 2      |
	|                |                 |                |
	+--+----------+--+                 +----+----+------+
	   |          |                         |    |
	   |          |                         |    |
	   |          |                         |    |
	   |          |                         |    |
	   |          |                         |    |
	   |          |                         |    |
	   |    +-------------------------------+    |
	   |    |     |                              |
	   |    |     |                              |
	+--+-+  |   +-+--+                           |
	| H1 +--+   | H4 +---------------------------+
	+----+      +----+
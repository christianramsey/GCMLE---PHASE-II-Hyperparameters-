import apache_beam as beam

print([1, 4, 2] | beam.Map(lambda x : 3*x))
# [3, 12, 6]
print( [('Nov',23), ('July',23), ('July',16)] | beam.GroupByKey() )
# [('July', <_UnwindowedValues of [(23, MIN_TIMESTAMP, [GlobalWindow]), (16, MIN_TIMESTAMP, [GlobalWindow])]>), ('Nov', <_UnwindowedValues of [(23, MIN_TIMESTAMP, [GlobalWindow])]>)]
# windering why this is unbounded and timestampeed as if Im streaming
def expo_close(s, r, times=10):
    return [s * r ** t for t in range(times)]

def expo_dynamic(s, r, times=10):
    results = [s]
    for t in range(times - 1):
        results.append(results[-1] * r)
    return results

def expo_slow(s, r, times=10):
    results = []
    for t in range(times):
        m = s
        for tt in range(t):
            m *= r
        results.append(m)
    return results

def get_timings(all_times):
    for times in all_times:
        tc = time_expo_close(times)
        td = time_expo_dynamic(times)
        ts = time_expo_slow(times)
        print ' '.join(map(str, ['%2s' % times, tc, td, ts]))

def format_timing(t):
    return '%0.8f' % t

def time_expo_close(times):
    return timeit_fun('expo_close', times)

def time_expo_dynamic(times):
    return timeit_fun('expo_dynamic', times)

def time_expo_slow(times):
    return timeit_fun('expo_slow', times)

def timeit_fun(fun, times, start=1, rate=2, number=1000):
    return format_timing(
               timeit.timeit(
                   "%s(%s,%s,%s)" % (fun, start, rate, times),
                   "from __main__ import %s" % fun,
                   number=number))

import timeit
get_timings(range(1,65,1))

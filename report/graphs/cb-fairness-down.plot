set xlabel 'Throughput (Mbps)'
set ylabel 'CDF'
set grid
set xrange [-1:31]
set yrange [-5:105]
set key right bottom
set title 'CDF 5-coupled-down'

set style line 1 lt 1 lc rgb "red"
set style line 2 lt 2 lc rgb "royalblue"
set style line 3 lt 3 lc rgb "forest-green"
set style line 4 lt 4 lc rgb "dark-magenta"
set style line 5 lt 5 lc rgb "black"
set style line 6 lt 6 lc rgb "gray"

plot  \
    '~/Dropbox/MPTCP/data/2013-08-20/5-coupled-down/mptcp@5-down/cdf-mptcp@5-down-bender-2.dat' using (8*$1/1048576):($2*100) title 'Multipath 5 GHz' with lines ls (1), \
    '~/Dropbox/MPTCP/data/2013-08-20/5-coupled-down/mptcp@5-down/cdf-mptcp@5-down-fry-4.dat' using (8*$1/1048576):($2*100) title 'Multipath 2.4 GHz' with lines ls (2), \
    '~/Dropbox/MPTCP/data/2013-08-20/5-coupled-down/parallel-5-down/cdf-parallel-5-down-bender-3.dat' using (8*$1/1048576):($2*100) title 'Parallel 5 GHz' with lines ls (4), \
    '~/Dropbox/MPTCP/data/2013-08-20/5-coupled-down/parallel-2.4-down/cdf-parallel-2.4-down-fry-5.dat' using (8*$1/1048576):($2*100) title 'Parallel 2.4 GHz' with lines ls (3), \
    '~/Dropbox/MPTCP/data/2013-08-20/5-coupled-down/mptcp@5-down/cdf-mptcp@5-down-mptcp-total-1.dat' using (8*$1/1048576):($2*100) title 'Multipath total' with lines ls 6

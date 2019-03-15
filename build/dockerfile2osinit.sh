#!/bin/bash
echo '#!/bin/bash' > osinit.sh
sed -n -e '/RUN/ { s/RUN //; p }' Dockerfile >> osinit.sh

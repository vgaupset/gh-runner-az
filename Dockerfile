FROM ubuntu:18.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
ENV GHRUNNER_VERSION=2.278.0
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

# Update Ubuntu Distrubution
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
		    apt-utils \
        jq \
        git \
        iputils-ping \
        libssl1.0.0 \
        libcurl4 \
        libicu60 \
        libunwind8 \
        netcat \
        wget \
        gnupg \
        openssh-client \
        rsync \
        dos2unix
		

# Copy Install Scripts
RUN mkdir /tmp/installscripts
ADD ["installscripts","/tmp/installscripts/"]
# Run Installation Scripts
RUN cd /tmp/installscripts && \
    dos2unix repos.sh && \
    dos2unix powershellcore.sh && \
    dos2unix azpowershell.sh && \
    dos2unix pesterpowershell.sh && \
    dos2unix fxpsyamlpowershell.sh && \
    dos2unix azure-cli.sh && \
    dos2unix azure-devops-cli.sh && \
    dos2unix azcopy.sh && \
    bash repos.sh && \
    bash powershellcore.sh && \
    bash azpowershell.sh && \
    bash pesterpowershell.sh && \
    bash fxpsyamlpowershell.sh && \
    bash azure-cli.sh && \
#    bash kubecli.sh && \
#    bash helm.sh && \
    # bash azure-devops-cli.sh && \
    bash azcopy.sh && \
    apt-get -y upgrade && \
    apt-get -y clean && \
    apt-get -y autoclean && \
    apt-get -y autoremove

WORKDIR /actions-runner
COPY installscripts/install_actions.sh /actions-runner

RUN chmod +x /actions-runner/install_actions.sh \
  && /actions-runner/install_actions.sh ${GHRUNNER_VERSION} \
  && rm /actions-runner/install_actions.sh


COPY  entrypoint.sh /
RUN chmod +x /entrypoint.sh 

CMD ["/entrypoint.sh"]

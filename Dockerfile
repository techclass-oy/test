FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /app
COPY . ./

WORKDIR /app/
ENV PORT 5000

RUN dotnet restore
RUN dotnet publish -c Release -o out

EXPOSE 5000

ENTRYPOINT ["dotnet","out/DockerSample.dll"]

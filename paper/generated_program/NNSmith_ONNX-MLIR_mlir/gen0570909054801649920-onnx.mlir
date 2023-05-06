module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_6(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[[4], [3]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_4(dense<[[[[6, 5]]], [[[6, 4]]]]> : tensor<2x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<[[-4], [-3]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1 : i64) : i64
    %6 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x i32>>>
    %7 = llvm.bitcast %6 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %7, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.insertvalue %11, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.insertvalue %13, %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.insertvalue %17, %16[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<1 x i32>>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(4 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i64>
    %91 = llvm.getelementptr %90[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i64> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i64> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i64>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %88, %108[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %89, %109[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%111 : i64)
  ^bb1(%114: i64):  // 2 preds: ^bb0, ^bb2
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %116 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %5, %117 : !llvm.ptr<i64>
    %118 = llvm.add %114, %113  : i64
    llvm.br ^bb1(%118 : i64)
  ^bb3:  // pred: ^bb1
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.null : !llvm.ptr<i64>
    %122 = llvm.getelementptr %121[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i64> to i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i64> to i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.sub %124, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.urem %131, %124  : i64
    %133 = llvm.sub %131, %132  : i64
    %134 = llvm.inttoptr %133 : i64 to !llvm.ptr<i64>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %136 = llvm.insertvalue %127, %135[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %119, %139[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %120, %140[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(4 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%142 : i64)
  ^bb4(%145: i64):  // 2 preds: ^bb3, ^bb5
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %147 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.getelementptr %147[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %149 = llvm.load %148 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.mul %149, %151  : i64
    %153 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %154 : !llvm.ptr<i64>
    %155 = llvm.add %145, %144  : i64
    llvm.br ^bb4(%155 : i64)
  ^bb6:  // pred: ^bb4
    %156 = llvm.mlir.constant(4 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.null : !llvm.ptr<i1>
    %159 = llvm.getelementptr %158[%156] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i1> to i64
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.add %160, %161  : i64
    %163 = llvm.call @malloc(%162) : (i64) -> !llvm.ptr<i8>
    %164 = llvm.bitcast %163 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %165 = llvm.ptrtoint %164 : !llvm.ptr<i1> to i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.sub %161, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.urem %168, %161  : i64
    %170 = llvm.sub %168, %169  : i64
    %171 = llvm.inttoptr %170 : i64 to !llvm.ptr<i1>
    %172 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %164, %172[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.insertvalue %175, %174[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %156, %176[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %157, %177[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(4 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%179 : i64)
  ^bb7(%182: i64):  // 2 preds: ^bb6, ^bb8
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %184 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.getelementptr %184[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %186 = llvm.load %185 : !llvm.ptr<i64>
    %187 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.getelementptr %187[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.icmp "eq" %186, %189 : i64
    %191 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%182] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %190, %192 : !llvm.ptr<i1>
    %193 = llvm.add %182, %181  : i64
    llvm.br ^bb7(%193 : i64)
  ^bb9:  // pred: ^bb7
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.null : !llvm.ptr<i64>
    %197 = llvm.getelementptr %196[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.ptrtoint %197 : !llvm.ptr<i64> to i64
    %199 = llvm.mlir.constant(16 : index) : i64
    %200 = llvm.add %198, %199  : i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr<i8>
    %202 = llvm.bitcast %201 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %203 = llvm.ptrtoint %202 : !llvm.ptr<i64> to i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.sub %199, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.urem %206, %199  : i64
    %208 = llvm.sub %206, %207  : i64
    %209 = llvm.inttoptr %208 : i64 to !llvm.ptr<i64>
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %211 = llvm.insertvalue %202, %210[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %209, %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %194, %214[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %195, %215[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%217 : i64)
  ^bb10(%220: i64):  // 2 preds: ^bb9, ^bb11
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %222 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.getelementptr %222[%220] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %224 = llvm.load %223 : !llvm.ptr<i1>
    %225 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.getelementptr %225[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %230 = llvm.load %229 : !llvm.ptr<i64>
    %231 = llvm.select %224, %227, %230 : i1, i64
    %232 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %233 : !llvm.ptr<i64>
    %234 = llvm.add %220, %219  : i64
    llvm.br ^bb10(%234 : i64)
  ^bb12:  // pred: ^bb10
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mlir.null : !llvm.ptr<i32>
    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i32> to i64
    %246 = llvm.mlir.constant(16 : index) : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.call @malloc(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.bitcast %248 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i32> to i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.sub %246, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.urem %253, %246  : i64
    %255 = llvm.sub %253, %254  : i64
    %256 = llvm.inttoptr %255 : i64 to !llvm.ptr<i32>
    %257 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %258 = llvm.insertvalue %249, %257[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %256, %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.insertvalue %260, %259[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %241, %265[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %238, %267[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %239, %268[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%270 : i64)
  ^bb13(%273: i64):  // 2 preds: ^bb12, ^bb23
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%275 : i64)
  ^bb15(%278: i64):  // 2 preds: ^bb14, ^bb22
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%280 : i64)
  ^bb17(%283: i64):  // 2 preds: ^bb16, ^bb21
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%285 : i64)
  ^bb19(%288: i64):  // 2 preds: ^bb18, ^bb20
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %290 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %273, %291  : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mul %4, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %4, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.add %298, %288  : i64
    %300 = llvm.getelementptr %290[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %301 = llvm.load %300 : !llvm.ptr<i32>
    %302 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %273, %303  : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mul %278, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %283, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.add %310, %288  : i64
    %312 = llvm.getelementptr %302[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %301, %312 : !llvm.ptr<i32>
    %313 = llvm.add %288, %287  : i64
    llvm.br ^bb19(%313 : i64)
  ^bb21:  // pred: ^bb19
    %314 = llvm.add %283, %282  : i64
    llvm.br ^bb17(%314 : i64)
  ^bb22:  // pred: ^bb17
    %315 = llvm.add %278, %277  : i64
    llvm.br ^bb15(%315 : i64)
  ^bb23:  // pred: ^bb15
    %316 = llvm.add %273, %272  : i64
    llvm.br ^bb13(%316 : i64)
  ^bb24:  // pred: ^bb13
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mlir.constant(8 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i1>
    %326 = llvm.getelementptr %325[%324] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i1> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i1> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i1>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %318, %344[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %323, %347[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %320, %349[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %321, %350[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%352 : i64)
  ^bb25(%355: i64):  // 2 preds: ^bb24, ^bb35
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%357 : i64)
  ^bb27(%360: i64):  // 2 preds: ^bb26, ^bb34
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%362 : i64)
  ^bb29(%365: i64):  // 2 preds: ^bb28, ^bb33
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%367 : i64)
  ^bb31(%370: i64):  // 2 preds: ^bb30, ^bb32
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %372 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %355, %373  : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %360, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %4, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %370  : i64
    %382 = llvm.getelementptr %372[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %383 = llvm.load %382 : !llvm.ptr<i32>
    %384 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.add %365, %4  : i64
    %386 = llvm.getelementptr %384[%385] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %387 = llvm.load %386 : !llvm.ptr<i32>
    %388 = llvm.icmp "sgt" %383, %387 : i32
    %389 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(4 : index) : i64
    %391 = llvm.mul %355, %390  : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mul %360, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mul %365, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %370  : i64
    %399 = llvm.getelementptr %389[%398] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %388, %399 : !llvm.ptr<i1>
    %400 = llvm.add %370, %369  : i64
    llvm.br ^bb31(%400 : i64)
  ^bb33:  // pred: ^bb31
    %401 = llvm.add %365, %364  : i64
    llvm.br ^bb29(%401 : i64)
  ^bb34:  // pred: ^bb29
    %402 = llvm.add %360, %359  : i64
    llvm.br ^bb27(%402 : i64)
  ^bb35:  // pred: ^bb27
    %403 = llvm.add %355, %354  : i64
    llvm.br ^bb25(%403 : i64)
  ^bb36:  // pred: ^bb25
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mlir.constant(8 : index) : i64
    %412 = llvm.mlir.null : !llvm.ptr<i32>
    %413 = llvm.getelementptr %412[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i32> to i64
    %415 = llvm.mlir.constant(16 : index) : i64
    %416 = llvm.add %414, %415  : i64
    %417 = llvm.call @malloc(%416) : (i64) -> !llvm.ptr<i8>
    %418 = llvm.bitcast %417 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %419 = llvm.ptrtoint %418 : !llvm.ptr<i32> to i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.sub %415, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.urem %422, %415  : i64
    %424 = llvm.sub %422, %423  : i64
    %425 = llvm.inttoptr %424 : i64 to !llvm.ptr<i32>
    %426 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %427 = llvm.insertvalue %418, %426[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %425, %427[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.insertvalue %429, %428[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %410, %434[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %407, %436[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %408, %437[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%439 : i64)
  ^bb37(%442: i64):  // 2 preds: ^bb36, ^bb47
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%444 : i64)
  ^bb39(%447: i64):  // 2 preds: ^bb38, ^bb46
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%449 : i64)
  ^bb41(%452: i64):  // 2 preds: ^bb40, ^bb45
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%454 : i64)
  ^bb43(%457: i64):  // 2 preds: ^bb42, ^bb44
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %459 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %460 = llvm.load %459 : !llvm.ptr<i1>
    %461 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %462 = llvm.add %452, %4  : i64
    %463 = llvm.getelementptr %461[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %464 = llvm.load %463 : !llvm.ptr<i32>
    %465 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mul %442, %466  : i64
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mul %447, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %4, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.add %473, %457  : i64
    %475 = llvm.getelementptr %465[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %476 = llvm.load %475 : !llvm.ptr<i32>
    %477 = llvm.select %460, %464, %476 : i1, i32
    %478 = llvm.extractvalue %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mul %442, %479  : i64
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.mul %447, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mul %452, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.add %486, %457  : i64
    %488 = llvm.getelementptr %478[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %477, %488 : !llvm.ptr<i32>
    %489 = llvm.add %457, %456  : i64
    llvm.br ^bb43(%489 : i64)
  ^bb45:  // pred: ^bb43
    %490 = llvm.add %452, %451  : i64
    llvm.br ^bb41(%490 : i64)
  ^bb46:  // pred: ^bb41
    %491 = llvm.add %447, %446  : i64
    llvm.br ^bb39(%491 : i64)
  ^bb47:  // pred: ^bb39
    %492 = llvm.add %442, %441  : i64
    llvm.br ^bb37(%492 : i64)
  ^bb48:  // pred: ^bb37
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mlir.constant(8 : index) : i64
    %501 = llvm.mlir.null : !llvm.ptr<i1>
    %502 = llvm.getelementptr %501[%500] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i1> to i64
    %504 = llvm.mlir.constant(16 : index) : i64
    %505 = llvm.add %503, %504  : i64
    %506 = llvm.call @malloc(%505) : (i64) -> !llvm.ptr<i8>
    %507 = llvm.bitcast %506 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %508 = llvm.ptrtoint %507 : !llvm.ptr<i1> to i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.sub %504, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.urem %511, %504  : i64
    %513 = llvm.sub %511, %512  : i64
    %514 = llvm.inttoptr %513 : i64 to !llvm.ptr<i1>
    %515 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %516 = llvm.insertvalue %507, %515[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %514, %516[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.insertvalue %518, %517[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %495, %521[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %496, %522[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %499, %523[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %498, %524[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %496, %525[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %497, %526[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%528 : i64)
  ^bb49(%531: i64):  // 2 preds: ^bb48, ^bb59
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%533 : i64)
  ^bb51(%536: i64):  // 2 preds: ^bb50, ^bb58
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%538 : i64)
  ^bb53(%541: i64):  // 2 preds: ^bb52, ^bb57
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%543 : i64)
  ^bb55(%546: i64):  // 2 preds: ^bb54, ^bb56
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %548 = llvm.extractvalue %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %531, %549  : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %536, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %541, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.add %556, %546  : i64
    %558 = llvm.getelementptr %548[%557] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %559 = llvm.load %558 : !llvm.ptr<i32>
    %560 = llvm.extractvalue %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.mlir.constant(4 : index) : i64
    %562 = llvm.mul %531, %561  : i64
    %563 = llvm.mlir.constant(4 : index) : i64
    %564 = llvm.mul %536, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.mlir.constant(2 : index) : i64
    %567 = llvm.mul %541, %566  : i64
    %568 = llvm.add %565, %567  : i64
    %569 = llvm.add %568, %546  : i64
    %570 = llvm.getelementptr %560[%569] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %571 = llvm.load %570 : !llvm.ptr<i32>
    %572 = llvm.icmp "slt" %559, %571 : i32
    %573 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %531, %574  : i64
    %576 = llvm.mlir.constant(4 : index) : i64
    %577 = llvm.mul %536, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mul %541, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %546  : i64
    %583 = llvm.getelementptr %573[%582] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %572, %583 : !llvm.ptr<i1>
    %584 = llvm.add %546, %545  : i64
    llvm.br ^bb55(%584 : i64)
  ^bb57:  // pred: ^bb55
    %585 = llvm.add %541, %540  : i64
    llvm.br ^bb53(%585 : i64)
  ^bb58:  // pred: ^bb53
    %586 = llvm.add %536, %535  : i64
    llvm.br ^bb51(%586 : i64)
  ^bb59:  // pred: ^bb51
    %587 = llvm.add %531, %530  : i64
    llvm.br ^bb49(%587 : i64)
  ^bb60:  // pred: ^bb49
    %588 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %589 = llvm.insertvalue %269, %588[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %590 = llvm.insertvalue %351, %589[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %591 = llvm.insertvalue %527, %590[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %591 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %20 = llvm.mlir.constant(3 : i64) : i64
    %21 = llvm.mlir.constant(24 : i64) : i64
    %22 = llvm.call @malloc(%21) : (i64) -> !llvm.ptr<i8>
    %23 = llvm.bitcast %22 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %24 = llvm.mlir.constant(4 : i64) : i64
    %25 = llvm.call @omTensorCreateUntyped(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.extractvalue %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.bitcast %27 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %29 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.bitcast %29 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%25, %26, %28, %30) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %31 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%25, %31) : (!llvm.ptr<i8>, i64) -> ()
    %32 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %33 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %34 = llvm.mlir.constant(0 : i64) : i64
    %35 = llvm.extractvalue %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.getelementptr %32[%34] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %35, %36 : !llvm.ptr<i64>
    %37 = llvm.extractvalue %17[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.getelementptr %33[%34] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %38 : !llvm.ptr<i64>
    %39 = llvm.mlir.constant(1 : i64) : i64
    %40 = llvm.extractvalue %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %32[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %40, %41 : !llvm.ptr<i64>
    %42 = llvm.extractvalue %17[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.getelementptr %33[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %42, %43 : !llvm.ptr<i64>
    %44 = llvm.mlir.constant(2 : i64) : i64
    %45 = llvm.extractvalue %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.getelementptr %32[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %45, %46 : !llvm.ptr<i64>
    %47 = llvm.extractvalue %17[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.getelementptr %33[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %47, %48 : !llvm.ptr<i64>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.extractvalue %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.getelementptr %32[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.extractvalue %17[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.getelementptr %33[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %52, %53 : !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.getelementptr %23[%54] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %25, %55 : !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.getelementptr %23[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.call @omTensorCreateUntyped(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %19[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %93 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%89, %90, %92, %94) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %95 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%89, %95) : (!llvm.ptr<i8>, i64) -> ()
    %96 = llvm.call @omTensorGetShape(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.extractvalue %19[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %19[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %96[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %19[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %97[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.extractvalue %19[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %96[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %19[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %97[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(3 : i64) : i64
    %114 = llvm.extractvalue %19[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %96[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %19[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %97[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(2 : i64) : i64
    %119 = llvm.getelementptr %23[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %89, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.call @omTensorListCreate(%23, %20, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %120 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<58 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<58 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<209 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<209 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


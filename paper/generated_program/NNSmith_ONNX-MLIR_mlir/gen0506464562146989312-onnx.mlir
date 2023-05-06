module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[[[[4, 5], [6, 7]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0", "v0_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(-1 : i64) : i64
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %10 = llvm.bitcast %9 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %11 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.insertvalue %10, %11[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %10, %12[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.insertvalue %14, %13[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.mlir.constant(3 : index) : i64
    %17 = llvm.insertvalue %16, %15[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.insertvalue %18, %17[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %27 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<3 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(3 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(3 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.null : !llvm.ptr<i64>
    %64 = llvm.getelementptr %63[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %65 = llvm.ptrtoint %64 : !llvm.ptr<i64> to i64
    %66 = llvm.mlir.constant(16 : index) : i64
    %67 = llvm.add %65, %66  : i64
    %68 = llvm.call @malloc(%67) : (i64) -> !llvm.ptr<i8>
    %69 = llvm.bitcast %68 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i64> to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %66, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %66  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr<i64>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %61, %81[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %62, %82[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(3 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb2
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %89 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %8, %90 : !llvm.ptr<i64>
    %91 = llvm.add %87, %86  : i64
    llvm.br ^bb1(%91 : i64)
  ^bb3:  // pred: ^bb1
    %92 = llvm.mlir.constant(3 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.null : !llvm.ptr<i64>
    %95 = llvm.getelementptr %94[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.ptrtoint %95 : !llvm.ptr<i64> to i64
    %97 = llvm.mlir.constant(16 : index) : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i64> to i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.sub %97, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.urem %104, %97  : i64
    %106 = llvm.sub %104, %105  : i64
    %107 = llvm.inttoptr %106 : i64 to !llvm.ptr<i64>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %109 = llvm.insertvalue %100, %108[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %92, %112[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %93, %113[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(3 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%115 : i64)
  ^bb4(%118: i64):  // 2 preds: ^bb3, ^bb5
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %120 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.getelementptr %120[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %122 = llvm.load %121 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.mul %122, %124  : i64
    %126 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.getelementptr %126[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %127 : !llvm.ptr<i64>
    %128 = llvm.add %118, %117  : i64
    llvm.br ^bb4(%128 : i64)
  ^bb6:  // pred: ^bb4
    %129 = llvm.mlir.constant(3 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.null : !llvm.ptr<i1>
    %132 = llvm.getelementptr %131[%129] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<i1> to i64
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i1> to i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.sub %134, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.urem %141, %134  : i64
    %143 = llvm.sub %141, %142  : i64
    %144 = llvm.inttoptr %143 : i64 to !llvm.ptr<i1>
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %146 = llvm.insertvalue %137, %145[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.insertvalue %129, %149[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %130, %150[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(3 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%152 : i64)
  ^bb7(%155: i64):  // 2 preds: ^bb6, ^bb8
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %157 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %159 = llvm.load %158 : !llvm.ptr<i64>
    %160 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %160[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.load %161 : !llvm.ptr<i64>
    %163 = llvm.icmp "eq" %159, %162 : i64
    %164 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%155] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %163, %165 : !llvm.ptr<i1>
    %166 = llvm.add %155, %154  : i64
    llvm.br ^bb7(%166 : i64)
  ^bb9:  // pred: ^bb7
    %167 = llvm.mlir.constant(3 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.null : !llvm.ptr<i64>
    %170 = llvm.getelementptr %169[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i64> to i64
    %172 = llvm.mlir.constant(16 : index) : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.bitcast %174 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i64> to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %172, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.urem %179, %172  : i64
    %181 = llvm.sub %179, %180  : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr<i64>
    %183 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.insertvalue %167, %187[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %168, %188[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(3 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%190 : i64)
  ^bb10(%193: i64):  // 2 preds: ^bb9, ^bb11
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %195 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.getelementptr %195[%193] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %197 = llvm.load %196 : !llvm.ptr<i1>
    %198 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %200 = llvm.load %199 : !llvm.ptr<i64>
    %201 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.select %197, %200, %203 : i1, i64
    %205 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %206 : !llvm.ptr<i64>
    %207 = llvm.add %193, %192  : i64
    llvm.br ^bb10(%207 : i64)
  ^bb12:  // pred: ^bb10
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.null : !llvm.ptr<i32>
    %215 = llvm.getelementptr %214[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i32> to i64
    %217 = llvm.mlir.constant(16 : index) : i64
    %218 = llvm.add %216, %217  : i64
    %219 = llvm.call @malloc(%218) : (i64) -> !llvm.ptr<i8>
    %220 = llvm.bitcast %219 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %221 = llvm.ptrtoint %220 : !llvm.ptr<i32> to i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.sub %217, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.urem %224, %217  : i64
    %226 = llvm.sub %224, %225  : i64
    %227 = llvm.inttoptr %226 : i64 to !llvm.ptr<i32>
    %228 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %229 = llvm.insertvalue %220, %228[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %208, %232[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %209, %233[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %210, %234[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %212, %235[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.insertvalue %210, %236[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.insertvalue %211, %237[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%239 : i64)
  ^bb13(%242: i64):  // 2 preds: ^bb12, ^bb20
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%244 : i64)
  ^bb15(%247: i64):  // 2 preds: ^bb14, ^bb19
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%249 : i64)
  ^bb17(%252: i64):  // 2 preds: ^bb16, ^bb18
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %254 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.getelementptr %254[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %242, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %247, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %252  : i64
    %264 = llvm.getelementptr %257[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %264 : !llvm.ptr<i32>
    %265 = llvm.add %252, %251  : i64
    llvm.br ^bb17(%265 : i64)
  ^bb19:  // pred: ^bb17
    %266 = llvm.add %247, %246  : i64
    llvm.br ^bb15(%266 : i64)
  ^bb20:  // pred: ^bb15
    %267 = llvm.add %242, %241  : i64
    llvm.br ^bb13(%267 : i64)
  ^bb21:  // pred: ^bb13
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mlir.null : !llvm.ptr<i32>
    %277 = llvm.getelementptr %276[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i32> to i64
    %279 = llvm.mlir.constant(16 : index) : i64
    %280 = llvm.add %278, %279  : i64
    %281 = llvm.call @malloc(%280) : (i64) -> !llvm.ptr<i8>
    %282 = llvm.bitcast %281 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.sub %279, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.urem %286, %279  : i64
    %288 = llvm.sub %286, %287  : i64
    %289 = llvm.inttoptr %288 : i64 to !llvm.ptr<i32>
    %290 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %291 = llvm.insertvalue %282, %290[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %289, %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.insertvalue %293, %292[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %268, %294[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %269, %295[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %274, %298[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %271, %300[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %272, %301[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%303 : i64)
  ^bb22(%306: i64):  // 2 preds: ^bb21, ^bb32
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%308 : i64)
  ^bb24(%311: i64):  // 2 preds: ^bb23, ^bb31
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%313 : i64)
  ^bb26(%316: i64):  // 2 preds: ^bb25, ^bb30
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%318 : i64)
  ^bb28(%321: i64):  // 2 preds: ^bb27, ^bb29
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %323 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.getelementptr %323[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.load %324 : !llvm.ptr<i32>
    %326 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %306, %327  : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mul %311, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %316, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.add %334, %321  : i64
    %336 = llvm.getelementptr %326[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.load %336 : !llvm.ptr<i32>
    %338 = llvm.mul %325, %337  : i32
    %339 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %306, %340  : i64
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mul %311, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %316, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.add %347, %321  : i64
    %349 = llvm.getelementptr %339[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %338, %349 : !llvm.ptr<i32>
    %350 = llvm.add %321, %320  : i64
    llvm.br ^bb28(%350 : i64)
  ^bb30:  // pred: ^bb28
    %351 = llvm.add %316, %315  : i64
    llvm.br ^bb26(%351 : i64)
  ^bb31:  // pred: ^bb26
    %352 = llvm.add %311, %310  : i64
    llvm.br ^bb24(%352 : i64)
  ^bb32:  // pred: ^bb24
    %353 = llvm.add %306, %305  : i64
    llvm.br ^bb22(%353 : i64)
  ^bb33:  // pred: ^bb22
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(4 : index) : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.null : !llvm.ptr<i32>
    %363 = llvm.getelementptr %362[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i32> to i64
    %365 = llvm.mlir.constant(16 : index) : i64
    %366 = llvm.add %364, %365  : i64
    %367 = llvm.call @malloc(%366) : (i64) -> !llvm.ptr<i8>
    %368 = llvm.bitcast %367 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i32> to i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.sub %365, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.urem %372, %365  : i64
    %374 = llvm.sub %372, %373  : i64
    %375 = llvm.inttoptr %374 : i64 to !llvm.ptr<i32>
    %376 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %377 = llvm.insertvalue %368, %376[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %375, %377[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %355, %381[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %360, %384[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %357, %386[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %358, %387[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%389 : i64)
  ^bb34(%392: i64):  // 2 preds: ^bb33, ^bb44
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%394 : i64)
  ^bb36(%397: i64):  // 2 preds: ^bb35, ^bb43
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%399 : i64)
  ^bb38(%402: i64):  // 2 preds: ^bb37, ^bb42
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%404 : i64)
  ^bb40(%407: i64):  // 2 preds: ^bb39, ^bb41
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %409 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.getelementptr %409[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.load %410 : !llvm.ptr<i32>
    %412 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mul %392, %413  : i64
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mul %397, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %402, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.add %420, %407  : i64
    %422 = llvm.getelementptr %412[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %423 = llvm.load %422 : !llvm.ptr<i32>
    %424 = llvm.icmp "sgt" %411, %423 : i32
    %425 = llvm.select %424, %411, %423 : i1, i32
    %426 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %392, %427  : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %397, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %402, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %407  : i64
    %436 = llvm.getelementptr %426[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %425, %436 : !llvm.ptr<i32>
    %437 = llvm.add %407, %406  : i64
    llvm.br ^bb40(%437 : i64)
  ^bb42:  // pred: ^bb40
    %438 = llvm.add %402, %401  : i64
    llvm.br ^bb38(%438 : i64)
  ^bb43:  // pred: ^bb38
    %439 = llvm.add %397, %396  : i64
    llvm.br ^bb36(%439 : i64)
  ^bb44:  // pred: ^bb36
    %440 = llvm.add %392, %391  : i64
    llvm.br ^bb34(%440 : i64)
  ^bb45:  // pred: ^bb34
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mlir.null : !llvm.ptr<i32>
    %450 = llvm.getelementptr %449[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i32> to i64
    %452 = llvm.mlir.constant(16 : index) : i64
    %453 = llvm.add %451, %452  : i64
    %454 = llvm.call @malloc(%453) : (i64) -> !llvm.ptr<i8>
    %455 = llvm.bitcast %454 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.sub %452, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.urem %459, %452  : i64
    %461 = llvm.sub %459, %460  : i64
    %462 = llvm.inttoptr %461 : i64 to !llvm.ptr<i32>
    %463 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %464 = llvm.insertvalue %455, %463[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %462, %464[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.insertvalue %466, %465[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %441, %467[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %442, %468[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %447, %471[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %444, %473[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %445, %474[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%476 : i64)
  ^bb46(%479: i64):  // 2 preds: ^bb45, ^bb56
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%481 : i64)
  ^bb48(%484: i64):  // 2 preds: ^bb47, ^bb55
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%486 : i64)
  ^bb50(%489: i64):  // 2 preds: ^bb49, ^bb54
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%491 : i64)
  ^bb52(%494: i64):  // 2 preds: ^bb51, ^bb53
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %496 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mul %479, %497  : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %484, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mul %489, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.add %504, %494  : i64
    %506 = llvm.getelementptr %496[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %507 = llvm.load %506 : !llvm.ptr<i32>
    %508 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mlir.constant(4 : index) : i64
    %510 = llvm.mul %479, %509  : i64
    %511 = llvm.mlir.constant(4 : index) : i64
    %512 = llvm.mul %484, %511  : i64
    %513 = llvm.add %510, %512  : i64
    %514 = llvm.mlir.constant(2 : index) : i64
    %515 = llvm.mul %489, %514  : i64
    %516 = llvm.add %513, %515  : i64
    %517 = llvm.add %516, %494  : i64
    %518 = llvm.getelementptr %508[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %519 = llvm.load %518 : !llvm.ptr<i32>
    %520 = llvm.icmp "sgt" %507, %519 : i32
    %521 = llvm.select %520, %507, %519 : i1, i32
    %522 = llvm.extractvalue %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.mlir.constant(4 : index) : i64
    %524 = llvm.mul %479, %523  : i64
    %525 = llvm.mlir.constant(4 : index) : i64
    %526 = llvm.mul %484, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %489, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %494  : i64
    %532 = llvm.getelementptr %522[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %521, %532 : !llvm.ptr<i32>
    %533 = llvm.add %494, %493  : i64
    llvm.br ^bb52(%533 : i64)
  ^bb54:  // pred: ^bb52
    %534 = llvm.add %489, %488  : i64
    llvm.br ^bb50(%534 : i64)
  ^bb55:  // pred: ^bb50
    %535 = llvm.add %484, %483  : i64
    llvm.br ^bb48(%535 : i64)
  ^bb56:  // pred: ^bb48
    %536 = llvm.add %479, %478  : i64
    llvm.br ^bb46(%536 : i64)
  ^bb57:  // pred: ^bb46
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mlir.null : !llvm.ptr<i64>
    %544 = llvm.getelementptr %543[%542] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %545 = llvm.ptrtoint %544 : !llvm.ptr<i64> to i64
    %546 = llvm.mlir.constant(16 : index) : i64
    %547 = llvm.add %545, %546  : i64
    %548 = llvm.call @malloc(%547) : (i64) -> !llvm.ptr<i8>
    %549 = llvm.bitcast %548 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i64> to i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.sub %546, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.urem %553, %546  : i64
    %555 = llvm.sub %553, %554  : i64
    %556 = llvm.inttoptr %555 : i64 to !llvm.ptr<i64>
    %557 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %558 = llvm.insertvalue %549, %557[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %559 = llvm.insertvalue %556, %558[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.insertvalue %560, %559[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %562 = llvm.insertvalue %537, %561[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %563 = llvm.insertvalue %538, %562[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.insertvalue %539, %563[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %565 = llvm.insertvalue %541, %564[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.insertvalue %539, %565[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.insertvalue %540, %566[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%568 : i64)
  ^bb58(%571: i64):  // 2 preds: ^bb57, ^bb65
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%573 : i64)
  ^bb60(%576: i64):  // 2 preds: ^bb59, ^bb64
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%578 : i64)
  ^bb62(%581: i64):  // 2 preds: ^bb61, ^bb63
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %583 = llvm.extractvalue %567[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mul %571, %584  : i64
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mul %576, %586  : i64
    %588 = llvm.add %585, %587  : i64
    %589 = llvm.add %588, %581  : i64
    %590 = llvm.getelementptr %583[%589] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %7, %590 : !llvm.ptr<i64>
    %591 = llvm.add %581, %580  : i64
    llvm.br ^bb62(%591 : i64)
  ^bb64:  // pred: ^bb62
    %592 = llvm.add %576, %575  : i64
    llvm.br ^bb60(%592 : i64)
  ^bb65:  // pred: ^bb60
    %593 = llvm.add %571, %570  : i64
    llvm.br ^bb58(%593 : i64)
  ^bb66:  // pred: ^bb58
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%594 : i64)
  ^bb67(%597: i64):  // 2 preds: ^bb66, ^bb77
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%599 : i64)
  ^bb69(%602: i64):  // 2 preds: ^bb68, ^bb76
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(2 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%604 : i64)
  ^bb71(%607: i64):  // 2 preds: ^bb70, ^bb75
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(2 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%609 : i64)
  ^bb73(%612: i64):  // 2 preds: ^bb72, ^bb74
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %614 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.mlir.constant(4 : index) : i64
    %616 = llvm.mul %597, %615  : i64
    %617 = llvm.mlir.constant(4 : index) : i64
    %618 = llvm.mul %602, %617  : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.mlir.constant(2 : index) : i64
    %621 = llvm.mul %607, %620  : i64
    %622 = llvm.add %619, %621  : i64
    %623 = llvm.add %622, %612  : i64
    %624 = llvm.getelementptr %614[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %625 = llvm.load %624 : !llvm.ptr<i32>
    %626 = llvm.extractvalue %567[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %627 = llvm.mlir.constant(2 : index) : i64
    %628 = llvm.mul %597, %627  : i64
    %629 = llvm.mlir.constant(2 : index) : i64
    %630 = llvm.mul %602, %629  : i64
    %631 = llvm.add %628, %630  : i64
    %632 = llvm.add %631, %612  : i64
    %633 = llvm.getelementptr %626[%632] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %634 = llvm.load %633 : !llvm.ptr<i64>
    %635 = llvm.icmp "slt" %634, %6 : i64
    %636 = llvm.select %635, %6, %634 : i1, i64
    %637 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.mlir.constant(4 : index) : i64
    %639 = llvm.mul %597, %638  : i64
    %640 = llvm.mlir.constant(4 : index) : i64
    %641 = llvm.mul %602, %640  : i64
    %642 = llvm.add %639, %641  : i64
    %643 = llvm.mlir.constant(2 : index) : i64
    %644 = llvm.mul %636, %643  : i64
    %645 = llvm.add %642, %644  : i64
    %646 = llvm.add %645, %612  : i64
    %647 = llvm.getelementptr %637[%646] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %648 = llvm.load %647 : !llvm.ptr<i32>
    %649 = llvm.icmp "slt" %625, %648 : i32
    %650 = llvm.select %649, %607, %636 : i1, i64
    %651 = llvm.extractvalue %567[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %597, %652  : i64
    %654 = llvm.mlir.constant(2 : index) : i64
    %655 = llvm.mul %602, %654  : i64
    %656 = llvm.add %653, %655  : i64
    %657 = llvm.add %656, %612  : i64
    %658 = llvm.getelementptr %651[%657] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %650, %658 : !llvm.ptr<i64>
    %659 = llvm.add %612, %611  : i64
    llvm.br ^bb73(%659 : i64)
  ^bb75:  // pred: ^bb73
    %660 = llvm.add %607, %606  : i64
    llvm.br ^bb71(%660 : i64)
  ^bb76:  // pred: ^bb71
    %661 = llvm.add %602, %601  : i64
    llvm.br ^bb69(%661 : i64)
  ^bb77:  // pred: ^bb69
    %662 = llvm.add %597, %596  : i64
    llvm.br ^bb67(%662 : i64)
  ^bb78:  // pred: ^bb67
    %663 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %664 = llvm.insertvalue %238, %663[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %665 = llvm.insertvalue %388, %664[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %666 = llvm.insertvalue %475, %665[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %667 = llvm.insertvalue %567, %666[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %667 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0", "v0_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %26 = llvm.extractvalue %23[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %27 = llvm.extractvalue %23[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %28 = llvm.mlir.constant(4 : i64) : i64
    %29 = llvm.mlir.constant(32 : i64) : i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr<i8>
    %31 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %32 = llvm.mlir.constant(3 : i64) : i64
    %33 = llvm.call @omTensorCreateUntyped(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.mlir.constant(1 : i64) : i64
    %35 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %37 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.bitcast %37 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%33, %34, %36, %38) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %39 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%33, %39) : (!llvm.ptr<i8>, i64) -> ()
    %40 = llvm.call @omTensorGetShape(%33) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %41 = llvm.call @omTensorGetStrides(%33) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.mlir.constant(0 : i64) : i64
    %43 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.getelementptr %40[%42] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.getelementptr %41[%42] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %45, %46 : !llvm.ptr<i64>
    %47 = llvm.mlir.constant(1 : i64) : i64
    %48 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.getelementptr %40[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.getelementptr %41[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.mlir.constant(2 : i64) : i64
    %53 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %40[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.getelementptr %41[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %31[%57] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %33, %58 : !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(4 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(1 : i64) : i64
    %90 = llvm.getelementptr %31[%89] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %90 : !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(2 : i64) : i64
    %122 = llvm.getelementptr %31[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(3 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %27[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %27[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %27[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %131[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %27[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.getelementptr %132[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(2 : i64) : i64
    %144 = llvm.extractvalue %27[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %131[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %27[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.getelementptr %132[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(3 : i64) : i64
    %149 = llvm.getelementptr %31[%148] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %149 : !llvm.ptr<ptr<i8>>
    %150 = llvm.call @omTensorListCreate(%31, %28, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %150 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<273 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<273 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

